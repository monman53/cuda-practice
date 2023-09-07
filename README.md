# CUDA Practice

## Setup CUDA

* Install CUDA Toolkit and NVIDIA driver
* Add path to `nvcc`.


## Build

```sh
# Setup libtorch
wget https://download.pytorch.org/libtorch/nightly/cpu/libtorch-shared-with-deps-latest.zip
unzip libtorch-shared-with-deps-latest.zip

# Build
mkdir build
cd build
cmake -DCMAKE_PREFIX_PATH=/home/monman/work/cuda-practice/libtorch ..
cmake --build . --config Release
```
