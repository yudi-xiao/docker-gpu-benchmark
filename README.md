To run in offline mode:

Make sure to build docker image first:

```bash
docker build [your repo name]/gpu-benchmark .
```

To run benchmark with built docker image:

```bash
docker run -rm -q --gpus=all --ipc=host [docker image name] --volume="[local result folder dir]:/app/pytorch-gpu-benchmark/results" python pytorch-gpu-benchmark/benchmark_models.py
```
