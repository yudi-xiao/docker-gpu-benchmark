To run in offline mode:

Make sure to build docker image first:

```bash
docker build -t [your repo name]/gpu-benchmark .
```

To run benchmark with built docker image:

```bash
docker run --rm -d --gpus=all [docker image name] --volume="[local result folder dir]:/workspace/pytorch-gpu-benchmark/results" python pytorch-gpu-benchmark/benchmark_models.py
```
