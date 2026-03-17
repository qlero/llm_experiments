#!/bin/bash

# llama-cli --model models/meta-llama-3.1-8B-instruct-q8_0.gguf
# If device is unset or unavailable, defaults to CPU.
# If the system has multiple GPUs, use GPU.0 or GPU.1 to explicitly target a specific GPU.

# Linux
source /opt/intel/openvino/setupvars.sh # should output: /opt/intel/openvino_2026.0/runtime/cmake
export GGML_OPENVINO_DEVICE=GPU

# To run llama-simple:
# ./build/ReleaseOV/bin/llama-simple -m ./models/meta-llama-3.1-8B-instruct-q8_0.gguf -n 50 "The story of AI is "

# To run in chat mode:
../llama.cpp/build/ReleaseOV/bin/llama-cli -m ./models/meta-llama-3.1-8B-instruct-q8_0.gguf