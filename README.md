## GPU Compatibility Testing with PyTorch
### bjective

This project aims to test GPU compatibility with PyTorch, ensuring that hardware-related issues are isolated from software configurations such as the OS, CUDA, or drivers. Previous attempts to install the required packages directly on the host system resulted in similar errors, confirming that the issue lies in multi-GPU parallel execution—where a single GPU functions correctly, but multiple GPUs do not work as expected.

### Contents
- ``Dockerfile.fastai-learner``: setting the mamba enviroment based on cuda11.7, 
- mnist.ipynb: A test script using FastAI and PyTorch.

### Source of code
The main source of my code from [here](https://hub.docker.com/r/nvidia/cuda/tags)

### To run [mnist.ipynb](https://walkwithfastai.com/MNIST) using docker; run: 

```bash
docker build -t fastai-learner:new -f Dockerfile.fastai-learner .
docker run -it --gpus=all -p 8888:8888 fastai-learner:new
```

###  Pre-Configuration Steps
- Update Docker daemon settings (/etc/docker/daemon.json):
```bash
{
  "runtimes": {
    "nvidia": {
      "path": "nvidia-container-runtime",
      "runtimeArgs": []
    }
  },
  "default-runtime": "nvidia",
  "dns": ["8.8.8.8", "8.8.4.4"]
}


```



```bash
sudo systemctl restart docker

docker info | grep -A 10 "Server"

```