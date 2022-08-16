# check_NVIDIA_RTX_A6000

In this github I built docker to build the same enviroment I ran it on my machine because I want to test if the problem is with my  GPU card or somewhere else. I got the same error. That proofs there is a problem on my GPU card.

## To run ``mnist.ipynb`` using docker; run: 

```bash
docker build -t fastai-learner:old -f Dockerfile.fastai-learner-old .
docker run -it --gpus=all -p 8888:8888 fastai-learner:old
```
