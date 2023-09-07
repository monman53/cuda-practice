#include <cstddef>
#include <stdexcept>

class Reduction {
public:
    virtual std::string name() = 0;

    virtual void sum_1d(const float *x, size_t n, float *y) {
        throw std::runtime_error("Not implemented");
    };

    virtual void sum_2d(const float *x, size_t n, float *y) {
        throw std::runtime_error("Not implemented");
    };

    virtual void sum_nd(const float *x, size_t n, float *y) {
        throw std::runtime_error("Not implemented");
    };

    virtual void mean_var_1d(const float *x, size_t n, float *mean, float *var) {
        throw std::runtime_error("Not implemented");
    };
};