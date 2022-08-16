# check_NVIDIA_RTX_A6000

The main goal is to test the GPU card (in this hardware setup) compatibility with PyTorch,  with the exclusion of any possibility there is any problem with OS, Cuda,  etc, ... (software issue). Eventually,  I got the same error from prior attempts installing these packages on the machine without a Docker Image, proving there is a problem with compatibility between the GPU card in this hardware setup and PyTorch.

### contents
- ``Dockerfile.fastai-learner``: setting the mamba enviroment based on cuda11.7, 
- ``Dockerfile.fastai-learner-old``: setting the mamba enviroment based on cuda11.3. 

### Source of code
The main source of my code from [here](https://hub.docker.com/r/nvidia/cuda/tags)

### To run [mnist.ipynb](https://walkwithfastai.com/MNIST) using docker; run: 

```bash
docker build -t fastai-learner:old -f Dockerfile.fastai-learner-old .
docker run -it --gpus=all -p 8888:8888 fastai-learner:old
```
