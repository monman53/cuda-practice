#include <torch/torch.h>
#include <iostream>

void reduction2() {
    std::cout << "Hello world!" << std::endl;

    float *input;
    float *output;

    size_t size = 1000;
    size_t bytes = size * sizeof(float);

    cudaMalloc(&input, bytes);
    cudaMalloc(&output, bytes);

    auto dims = torch::IntArrayRef{1, int(size)};
    auto gpu_tensor = torch::from_blob(input, dims, torch::TensorOptions().device(torch::kCUDA));
    torch::Tensor tensor = torch::rand({2, 3});
    std::cout << tensor << std::endl;
}