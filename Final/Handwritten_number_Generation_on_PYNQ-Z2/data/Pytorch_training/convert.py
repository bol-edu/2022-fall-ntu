import os, time
import matplotlib.pyplot as plt
import itertools
import pickle
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import DataLoader
from torchvision import utils, datasets, transforms
from torch.autograd import Variable
import numpy as np

import random

seed = 123
torch.manual_seed(seed)
torch.cuda.manual_seed(seed)
torch.cuda.manual_seed_all(seed)
np.random.seed(seed)
random.seed(seed)

noise_size = 100


class generator(nn.Module):
    def __init__(self):
        super(generator, self).__init__()
        self.quant = torch.quantization.QuantStub()
        self.dequant = torch.quantization.DeQuantStub()
        self.main = nn.Sequential(
            nn.Linear(100, 256, bias=False),
            nn.ReLU(),
            nn.Linear(256, 512, bias=False),
            nn.ReLU(),
            nn.Linear(512, 784, bias=False),
            nn.Tanh()
        )

    def forward(self, input):
        y = self.quant(input)
        y = self.main(y)
        y = self.dequant(y)
        return y


model_fp32 = generator()
model_fp32.load_state_dict(torch.load('generator_param.pkl', map_location=torch.device('cpu')))
print(model_fp32)
model_fp32.eval()
model_fp32.qconfig = torch.quantization.get_default_qconfig('fbgemm')
model_fp32_fused = torch.quantization.fuse_modules(model_fp32, [['main.0', 'main.1'],['main.2', 'main.3']])
model_fp32_prepared = torch.quantization.prepare(model_fp32_fused)

train_data = datasets.MNIST(
    root='./mnist',
    train=True,
    transform=transforms.Compose([
        transforms.Resize(32),
        transforms.ToTensor(),
        transforms.Normalize((0.5,), (0.5,))
    ]),
    download=True
)
test_data = datasets.MNIST(
    root='./mnist',
    train=False,
    transform=transforms.Compose([
        transforms.Resize(32),
        transforms.ToTensor(),
        transforms.Normalize((0.5,), (0.5,))
    ])
)
dataset = train_data+test_data
print(f'Total Size of Dataset: {len(dataset)}')

dataloader = DataLoader (
    dataset=dataset,
    batch_size=10,
    shuffle=True,
    num_workers=10
)

with torch.no_grad():
    for i, data in enumerate(dataloader):
        noise = (torch.rand(10, noise_size)-0.5) / 0.5
        noise = noise.to('cpu')
        dummy = noise
        output = model_fp32_prepared(noise)
        output = output
    
model_int8 = torch.quantization.convert(model_fp32_prepared)
print(model_int8)

#print((dummy/0.0165+61))

fc1 = model_int8.main[0].weight().int_repr().detach().contiguous()
fc2 = model_int8.main[2].weight().int_repr().detach().contiguous()
fc3 = model_int8.main[4].weight().int_repr().detach().contiguous()
print(fc1.view(-1))
print(fc2.view(-1))
print(fc3.view(-1))
fc1_sum = np.sum(np.array(fc1).astype(np.int32), axis=1, keepdims=False)
fc2_sum = np.sum(np.array(fc2).astype(np.int32), axis=1, keepdims=False)
fc3_sum = np.sum(np.array(fc3).astype(np.int32), axis=1, keepdims=False)

np.savetxt('./weight/fc1_sum.txt', fc1_sum, fmt='%d', newline=',')
np.savetxt('./weight/fc2_sum.txt', fc2_sum, fmt='%d', newline=',')
np.savetxt('./weight/fc3_sum.txt', fc3_sum, fmt='%d', newline=',')

np.savetxt('./weight/fc1.txt', fc1.view(-1), fmt='%d', newline=',')
np.savetxt('./weight/fc2.txt', fc2.view(-1), fmt='%d', newline=',')
np.savetxt('./weight/fc3.txt', fc3.view(-1), fmt='%d', newline=',')
print(dummy.shape)
np.savetxt('./weight/input.txt', (torch.quantize_per_tensor(dummy, 0.0165, 61, dtype=torch.quint8).int_repr().view(-1).numpy()), fmt='%d')
np.savetxt('./weight/output.txt', output.view(-1), fmt='%.6f')

fc1 = model_int8.main[0].weight().detach().contiguous()
fc2 = model_int8.main[2].weight().detach().contiguous()
fc3 = model_int8.main[4].weight().detach().contiguous()
print(fc1)
print(fc2)
print(fc3)

fc1_out = model_int8.main[0](torch.quantize_per_tensor(dummy, 0.0165, 61, dtype=torch.quint8))
fc2_out = model_int8.main[2](fc1_out)
fc3_out = model_int8.main[4](fc2_out)

np.savetxt('./weight/fc1_out.txt', fc1_out.int_repr().view(-1), fmt='%d', newline='\n')
np.savetxt('./weight/fc2_out.txt', fc2_out.int_repr().view(-1), fmt='%d', newline='\n')
np.savetxt('./weight/fc3_out.txt', fc3_out.int_repr().view(-1), fmt='%d', newline='\n')

#print(fc1_out.int_repr())
#print(fc2_out.int_repr())
#print(fc3_out.int_repr())

"""
fc1_1 = model_int8.fc1_1.weight().detach().contiguous()
fc1_2 = model_int8.fc1_2.weight().detach().contiguous()
fc2 = model_int8.fc2.weight().detach().contiguous()
fc3 = model_int8.fc3.weight().detach().contiguous()
fc4 = model_int8.fc4.weight().detach().contiguous()
print(fc1_1)
print(fc1_2)
print(fc2)
print(fc3)
print(fc4)
"""





