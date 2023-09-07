// #include <torch/torch.h>
#include <iostream>
#include <common.hpp>

void reduction();
void reduction2();

int main(int argc, char **argv) {
  // torch::Tensor tensor = torch::rand({2, 3});
  // std::cout << tensor << std::endl;
  std::cout << "debug" << std::endl;

  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();

  reduction2();
}