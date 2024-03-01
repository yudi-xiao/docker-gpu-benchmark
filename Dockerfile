FROM anibali/pytorch:2.0.1-cuda11.8

USER root

WORKDIR /app

RUN apt-get update && apt-get install git ffmpeg libsm6 libxext6 -y

RUN git clone https://github.com/ryujaehun/pytorch-gpu-benchmark.git

RUN pip install matplotlib pandas plotly cufflinks psutil