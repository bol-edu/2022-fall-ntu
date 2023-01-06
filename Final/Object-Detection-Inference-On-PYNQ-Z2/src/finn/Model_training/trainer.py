# MIT License
#
# Copyright (c) 2019 Xilinx
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
from tqdm import tqdm
import random
import os
import time
from datetime import datetime
from voc import VOCDetection
import torch
import torch.optim as optim
from torch import nn
from torch.optim.lr_scheduler import MultiStepLR
from torch.utils.data import DataLoader
from torchvision import transforms
from yololoss import YoloLoss
from logger import Logger, TrainingEpochMeters, EvalEpochMeters
from models import model_with_cfg
from brevitas.export import FINNManager
from utils import *



class Trainer(object):
    def __init__(self, args):

        model, cfg = model_with_cfg(args.network, args.pretrained)


        self.args = args
        prec_name = "_{}W{}A".format(cfg.getint('QUANT', 'WEIGHT_BIT_WIDTH'),
                                     cfg.getint('QUANT', 'ACT_BIT_WIDTH'))
        experiment_name = '{}'.format(args.network)
        self.output_dir_path = os.path.join(args.experiments, experiment_name)

        if self.args.resume:
            self.output_dir_path, _ = os.path.split(args.resume)
            self.output_dir_path, _ = os.path.split(self.output_dir_path)

        if not args.dry_run:
            self.checkpoints_dir_path = os.path.join(self.output_dir_path, 'checkpoints')
            if not args.resume:
                os.makedirs(self.output_dir_path)
                os.makedirs(self.checkpoints_dir_path)
        self.logger = Logger(self.output_dir_path, args.dry_run)

        # Randomness
        random.seed(args.random_seed)
        torch.manual_seed(args.random_seed)
        torch.cuda.manual_seed_all(args.random_seed)

        # Datasets
        transform_to_tensor = transforms.Compose([transforms.ToTensor()])

        dataset = cfg.get('MODEL', 'DATASET')
        self.num_classes = cfg.getint('MODEL', 'NUM_CLASSES')
        if dataset == 'VOC':
            train_transforms_list = [
                                     #transforms.RandomHorizontalFlip(),
                                     transforms.Resize(size=(48,48)),
                                     transforms.ToTensor()]
            transform_train = transforms.Compose(train_transforms_list)
            builder = VOCDetection
        else:
            raise Exception("Dataset not supported: {}".format(args.dataset))

        train_set = builder(root="./train2017/",
                            year='2007',
                            image_set='train',
                            download=True,
                            transforms=transform_train)
        '''test_set = builder(root="./test2017/",
                            year='2007',
                            image_set='test',
                           download=False,
                           transforms=transform_train)'''
        self.train_loader = DataLoader(train_set,
                                       batch_size=args.batch_size,
                                       shuffle=True,
                                       num_workers=args.num_workers)
        '''self.test_loader = DataLoader(test_set,
                                      batch_size=args.batch_size,
                                      shuffle=False,
                                      num_workers=args.num_workers)'''

        # Init starting values
        self.starting_epoch = 1 
        self.best_val_acc = 0

        # Setup device
        if args.gpus is not None:
            args.gpus = [int(i) for i in args.gpus.split(',')]
            self.device = 'cuda:' + str(args.gpus[0])
            torch.backends.cudnn.benchmark = True
        else:
            self.device = 'cpu'
        self.device = torch.device(self.device)

        # Resume checkpoint, if any
        if args.resume:
            print('Loading model checkpoint at: {}'.format(args.resume))
            package = torch.load(args.resume, map_location='cpu')
            model_state_dict = package['state_dict']
            model.load_state_dict(model_state_dict)
            FINNManager.export(model, 
                                input_shape=(1, 3, 48, 48), 
                                export_path=os.path.join(self.output_dir_path,'best.onnx'))
            return
        if args.gpus is not None and len(args.gpus) == 1:
            model = model.to(device=self.device)
        if args.gpus is not None and len(args.gpus) > 1:
            model = nn.DataParallel(model, args.gpus)
        self.model = model

        self.criterion = YoloLoss()
        self.criterion = self.criterion.to(device=self.device)

        # Init optimizer
        if args.optim == 'ADAM':
            self.optimizer = optim.Adam(self.model.parameters(),
                                        lr=args.lr,
                                        weight_decay=args.weight_decay)
        elif args.optim == 'SGD':
            self.optimizer = optim.SGD(self.model.parameters(),
                                       lr=self.args.lr,
                                       momentum=self.args.momentum,
                                       weight_decay=self.args.weight_decay)

        # Resume optimizer, if any
        if args.resume and not args.evaluate:
            self.logger.log.info("Loading optimizer checkpoint")
            if 'optim_dict' in package.keys():
                self.optimizer.load_state_dict(package['optim_dict'])
            if 'epoch' in package.keys():
                self.starting_epoch = package['epoch']
            if 'best_val_acc' in package.keys():
                self.best_val_acc = package['best_val_acc']

        # LR scheduler
        if args.scheduler == 'STEP':
            milestones = [int(i) for i in args.milestones.split(',')]
            self.scheduler = MultiStepLR(optimizer=self.optimizer,
                                         milestones=milestones,
                                         gamma=0.1)
        elif args.scheduler == 'FIXED':
            self.scheduler = None
        else:
            raise Exception("Unrecognized scheduler {}".format(self.args.scheduler))

        # Resume scheduler, if any
        if args.resume and not args.evaluate and self.scheduler is not None:
            self.scheduler.last_epoch = package['epoch'] - 1

    def checkpoint_best(self, epoch, name):
        best_path = os.path.join(self.checkpoints_dir_path, name)
        self.logger.info("Saving checkpoint model to {}".format(best_path))
        torch.save({
            'state_dict': self.model.state_dict(),
            'optim_dict': self.optimizer.state_dict(),
            'epoch': epoch + 1,
            'best_val_acc': self.best_val_acc,
        }, best_path)

    def train_model(self):
        # training starts
        if self.args.detect_nan:
            torch.autograd.set_detect_anomaly(True)

        for epoch in range(self.starting_epoch, self.args.epochs):
            print('epoch '+str(epoch))
            # Set to training mode
            self.model.train()
            #print(self.model)
            self.criterion.train()
            # Init metrics
            epoch_meters = TrainingEpochMeters()
            start_data_loading = time.time()
            mean_loss = []
            loop = tqdm(self.train_loader,leave=True)
            for i, data in enumerate(loop):
                (input, target) = data
                input = input.to(self.device, non_blocking=True)
                target = target.to(self.device, non_blocking=True)


                target_var = target

                # measure data loading time
                epoch_meters.data_time.update(time.time() - start_data_loading)

                # Training batch starts
                start_batch = time.time()
                output = self.model(input)
                loss = self.criterion(output, target_var)
                mean_loss.append(loss.item())
                # compute gradient and do SGD step
                self.optimizer.zero_grad()
                loss.backward()
                self.optimizer.step()

                self.model.clip_weights(-1, 1)

                # measure elapsed time
                epoch_meters.batch_time.update(time.time() - start_batch)
                loop.set_postfix(loss=sum(mean_loss)/len(mean_loss))


                # training batch ends
                start_data_loading = time.time()

            # Set the learning rate
            if self.scheduler is not None:
                self.scheduler.step(epoch)
            else:
                # Set the learning rate
                if epoch % 40 == 0:
                    self.optimizer.param_groups[0]['lr'] *= 0.5

            # Perform eval
            with torch.no_grad():
                map = self.eval_model(epoch)

            # checkpoint
            if map >= self.best_val_acc and not self.args.dry_run:
                self.best_val_acc = map
                self.checkpoint_best(epoch, "best.tar")

        print('best mAP is ' + str(self.best_val_acc.item()))

    def eval_model(self, epoch=None):
        eval_meters = EvalEpochMeters()

        # switch to evaluate mode
        self.model.eval()
        self.criterion.eval()

        mean_loss = []
        loop = tqdm(self.train_loader,leave=True)
        for i, data in enumerate(loop):

            end = time.time()
            (input, target) = data

            input = input.to(self.device, non_blocking=True)
            target = target.to(self.device, non_blocking=True)

            target_var = target

            # compute output
            output = self.model(input)

            # measure model elapsed time
            eval_meters.model_time.update(time.time() - end)
            end = time.time()

            # compute loss
            loss = self.criterion(output, target_var)
            mean_loss.append(loss.item())
            loop.set_postfix(loss=sum(mean_loss)/len(mean_loss))
        pred_boxes, target_boxes = get_bboxes(
            self.train_loader, self.model, iou_threshold=0.5, threshold=0.4, 
        )

        mean_avg_prec = mean_average_precision(
            pred_boxes, target_boxes, iou_threshold=0.5, box_format="midpoint"
        )
        print(f"Val mAP: {mean_avg_prec:.5f}")
        return mean_avg_prec

            

        
