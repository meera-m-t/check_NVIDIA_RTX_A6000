# check_NVIDIA_RTX_A6000

### To run [mnist.ipynb](https://walkwithfastai.com/MNIST) using docker; run: 

```bash
docker build -t fastai-learner:old -f Dockerfile.fastai-learner-old .
docker run -it --gpus=all -p 8888:8888 fastai-learner:old
```
