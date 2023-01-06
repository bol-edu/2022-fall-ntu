import torch
from torchvision import transforms
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.gridspec as gridspec

noise_size = 100

plt.rcParams['figure.figsize'] = (10.0, 8.0)
plt.rcParams['image.interpolation'] = 'nearest'
plt.rcParams['image.cmap'] = 'gray'


def show_images(images):
    sqrtn = int(np.ceil(np.sqrt(images.shape[0])))

    for index, image in enumerate(images):
        plt.subplot(sqrtn, sqrtn, index+1)
        plt.imshow(image.reshape(28, 28))


device = 'cuda:0' if torch.cuda.is_available() else 'cpu'
#device = 'cpu'
print('GPU State:', device)

# Model
G = torch.load('Generator_epoch_100.pth')
G = G.to(device)
G.eval()

# Generator
noise = (torch.rand(64, noise_size)-0.5) / 0.5
noise = noise.to(device)

import time

#start_time = time.time()
fake_image = G(noise)
#end_time = time.time()
imgs_numpy = (fake_image.data.cpu().numpy()+1.0)/2.0
#print(end_time-start_time)

show_images(imgs_numpy)
plt.show()
