import torch
import torch.nn as nn
import torch.nn.functional as F
import brevitas.nn as qnn
from brevitas.export import FINNManager
from tqdm import tqdm
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms

class BasicBlock_qnn(nn.Module):
    expansion = 1

    def __init__(self, in_planes, planes, stride=1, bit_width=4):
        super(BasicBlock_qnn, self).__init__()
        self.conv1 = qnn.QuantConv2d(in_planes, planes, kernel_size=3, stride=stride, padding=1 ,bias=False, weight_bit_width=bit_width, return_quant_tensor=True)
        # self.bn1 = qnn.BatchNorm2dToQuantScaleBias(planes, return_quant_tensor=True)
        self.relu1 = qnn.QuantReLU(bit_width=bit_width, return_quant_tensor=True)
        self.conv2 = qnn.QuantConv2d(planes, planes, kernel_size=3, stride=1, padding=1 ,bias=False, weight_bit_width=bit_width, return_quant_tensor=True)
        # self.bn2 = qnn.BatchNorm2dToQuantScaleBias(planes, return_quant_tensor=True)
        self.relu2 = qnn.QuantReLU(bit_width=bit_width, return_quant_tensor=True)
        self.quant_inp = qnn.QuantIdentity(bit_width=bit_width, return_quant_tensor=True)

        self.shortcut = nn.Sequential()
        if stride != 1:
            self.shortcut = nn.Sequential(
                qnn.QuantConv2d(in_planes, planes, kernel_size=1, stride=stride, bias=False, weight_bit_width=bit_width, return_quant_tensor=True))

    def forward(self, x):
        out = self.relu1(self.conv1(x))
        out = self.conv2(out)
        out = self.relu2(self.quant_inp(out) + self.quant_inp(self.shortcut(x)))
        return out


class ResNet_qnn(nn.Module):
    def __init__(self, block, num_blocks, channel, bit_width):
        super(ResNet_qnn, self).__init__()
        self.in_planes = channel
        self.quant_inp = qnn.QuantIdentity(bit_width=bit_width, return_quant_tensor=True)
        self.conv1= qnn.QuantConv2d(3,channel,kernel_size=3,stride=1,padding=1 ,bias=False, weight_bit_width=bit_width, return_quant_tensor=True)
        # self.bn1 = qnn.BatchNorm2dToQuantScaleBias(64, return_quant_tensor=True)
        self.relu1 = qnn.QuantReLU(bit_width=bit_width, return_quant_tensor=True)
        self.layer1 = self._make_layer(block, channel, num_blocks[0], stride=2, bit_width=bit_width)
        self.layer2 = self._make_layer(block, channel*2, num_blocks[1], stride=2, bit_width=bit_width)
        self.layer3 = self._make_layer(block, channel*4, num_blocks[2], stride=2, bit_width=bit_width)
        self.linear = qnn.QuantLinear(channel*4, 10, bias=False, weight_bit_width=bit_width)

    def _make_layer(self, block, planes, num_blocks, stride, bit_width):
        strides = [stride] + [1]*(num_blocks-1)
        layers = []
        for stride in strides:
            layers.append(block(self.in_planes, planes, stride, bit_width))
            self.in_planes = planes
        return nn.Sequential(*layers)

    def forward(self, x):
        out = self.quant_inp(x)
        out = self.relu1(self.conv1(out))
        out = self.layer1(out)
        out = self.layer2(out)
        out = self.layer3(out)
        # out = self.layer4(out)
        out = F.avg_pool2d(out, 4)
        out = out.view(out.size(0), -1)
        out = self.linear(out)
        return out


def ResNet18_qnn(channel, bit_width):
    return ResNet_qnn(BasicBlock_qnn, [1, 1, 1], channel, bit_width)

if __name__ == "__main__":

    learning_rate = 0.1
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    start_epoch = 0  # start from epoch 0 or last checkpoint epoch
    num_epoch = 200

    # Data
    print('==> Preparing data..')
    transform_train = transforms.Compose([
        transforms.RandomCrop(32, padding=4),
        transforms.RandomHorizontalFlip(),
        transforms.ToTensor(),
        transforms.Normalize((0.4914, 0.4822, 0.4465), (0.2023, 0.1994, 0.2010)),
    ])

    transform_test = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.4914, 0.4822, 0.4465), (0.2023, 0.1994, 0.2010)),
    ])

    trainset = torchvision.datasets.CIFAR10(
        root='./data', train=True, download=True, transform=transform_train)
    trainloader = torch.utils.data.DataLoader(
        trainset, batch_size=128, shuffle=True, num_workers=0)

    testset = torchvision.datasets.CIFAR10(
        root='./data', train=False, download=True, transform=transform_test)
    testloader = torch.utils.data.DataLoader(
        testset, batch_size=128, shuffle=False, num_workers=0)

    classes = ('plane', 'car', 'bird', 'cat', 'deer',
            'dog', 'frog', 'horse', 'ship', 'truck')

    # Model

    # channel
    for channel in range(1, 2):
        c = 8 * (2**channel)
        for bit in range(6, 7, 2):
            net = ResNet18_qnn(c, bit)
            criterion = nn.CrossEntropyLoss()
            optimizer = optim.SGD(net.parameters(), lr=learning_rate,
                                momentum=0.9, weight_decay=5e-4)
            scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=200)
            best_acc = -1  # best test accuracy
            for epoch in range(start_epoch, start_epoch + num_epoch):
                net.to(device)
                # net.train()
                train_loss = 0
                correct = 0
                total = 0

                progress_bar_train = tqdm(trainloader)
                progress_bar_train.set_description(f"Epoch {epoch+1}")

                for batch_idx, (inputs, targets) in enumerate(progress_bar_train):
                    inputs, targets = inputs.to(device), targets.to(device)
                    optimizer.zero_grad()
                    outputs = net(inputs)
                    loss = criterion(outputs, targets)
                    loss.backward()
                    optimizer.step()

                    train_loss += loss.item()
                    _, predicted = outputs.max(1)
                    total += targets.size(0)
                    correct += predicted.eq(targets).sum().item()
                            
                net.to(device)
                # net.eval()
                test_loss = 0
                correct = 0
                total = 0
                
                progress_bar_test = tqdm(testloader)
                progress_bar_test.set_description(f"Epoch {epoch+1}")

                with torch.no_grad():
                    for batch_idx, (inputs, targets) in enumerate(progress_bar_test):
                        inputs, targets = inputs.to(device), targets.to(device)
                        outputs = net(inputs)
                        loss = criterion(outputs, targets)

                        test_loss += loss.item()
                        _, predicted = outputs.max(1)
                        total += targets.size(0)
                        correct += predicted.eq(targets).sum().item()
                acc = 100.*correct/total
                if acc > best_acc:
                    print(f'Saving for {acc} accuracy')
                    net.to('cpu')
                    FINNManager.export(net, input_shape=(1, 3, 32, 32), export_path=f'./checkpoint_last/finn_resnet_bit{bit}_channel{c}_acc{acc:.2f}.onnx')
                    best_acc = acc
                    
                scheduler.step()
            
            print(f'Best Acc:{best_acc:.2f}')