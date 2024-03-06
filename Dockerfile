FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel

USER root

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Etc/UTC

RUN apt-get update && apt-get install git ffmpeg libsm6 libxext6 -y

WORKDIR /workspace

RUN git clone https://github.com/ryujaehun/pytorch-gpu-benchmark.git

RUN pip install --no-cache-dir matplotlib pandas plotly cufflinks psutil
