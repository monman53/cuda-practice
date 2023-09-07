#!/bin/bash

set -e

ROOT_DIR=`pwd`

mkdir -p build
pushd build
cmake -DCMAKE_PREFIX_PATH=${ROOT_DIR}/libtorch ..