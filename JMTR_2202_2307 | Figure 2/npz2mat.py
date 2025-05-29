import numpy as np
from scipy.io import savemat


file=np.load('pems08.npz',allow_pickle=True)

data = file['data']   #17856*170*3(0\1\2 as flow\occupancy\speed)

savemat('flow.mat', {'flow': data[:, :, 0]})
