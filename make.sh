#!/bin/bash

set -e

ROOT_DIR=`pwd`

pushd build
cmake --build . --config Release