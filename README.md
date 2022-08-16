# check_NVIDIA_RTX_A6000

In this github Itried  to  dockerize Cuda: Because Cuda, OS, and everything in docker are packed with the PyTorch version we want. So just, I use the driver from my local system and some wrappers. So this will tell me exactly if the problem is with my card or somewhere else. I got the same eeror. That proofs there is a problem on my card.

## To run ``mnist.ipynb`` using docker; run: 

```bash
docker build -t fastai-learner:old -f Dockerfile.fastai-learner-old .
docker run -it --gpus=all -p 8888:8888 fastai-learner:old
```
