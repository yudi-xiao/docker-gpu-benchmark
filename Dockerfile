FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel

USER root

WORKDIR /app

RUN apt-get update && apt-get install git ffmpeg libsm6 libxext6 -y

RUN git clone https://github.com/ryujaehun/pytorch-gpu-benchmark.git

RUN pip install matplotlib pandas plotly cufflinks psutil
