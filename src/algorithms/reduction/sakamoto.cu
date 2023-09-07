#include <common.hpp>
#include <algorithms/reduction.hpp>
#include <torch/torch.h>

class ReductionSakamoto : public Reduction {
public:
    std::string name() {
        return "Sakamoto";
    }

    void sum_1d(const float *x, size_t n, float *y) {
        y[0] = 0;
        for(size_t i=0;i<n;i++){
            y[0] += x[i];
        }
    };
};

void reduction() {
    std::cout << "Hello world!" << std::endl;

    ReductionSakamoto red;
    std::cout << red.name() << std::endl;

    // float *input;
    // float *output;

    // size_t size = 1000;
    // size_t bytes = size * sizeof(float);

    // cudaMalloc(&input, bytes);
    // cudaMalloc(&output, bytes);

    // auto dims = torch::IntArrayRef{1, int(size)};
    // auto gpu_tensor = torch::from_blob(input, dims, torch::TensorOptions().device(torch::kCUDA));
    torch::Tensor tensor = torch::rand({2, 3});
    std::cout << tensor << std::endl;
}