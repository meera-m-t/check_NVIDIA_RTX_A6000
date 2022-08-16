# check_NVIDIA_RTX_A6000


``Dockerfile.fastai-learner``: setting the mamba enviroment based on cuda11.7, while ``Dockerfile.fastai-learner-old``: setting the mamba enviroment based on cuda11.3. The main source of my code from [here](https://hub.docker.com/r/nvidia/cuda/tags)

### To run [mnist.ipynb](https://walkwithfastai.com/MNIST) using docker; run: 

```bash
docker build -t fastai-learner:old -f Dockerfile.fastai-learner-old .
docker run -it --gpus=all -p 8888:8888 fastai-learner:old
```
