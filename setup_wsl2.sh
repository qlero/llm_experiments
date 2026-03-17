#!/bin/bash

#sudo snap install docker
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/quent/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/quent/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
sudo apt-get install build-essential
brew install gcc
sudo apt-get update
sudo apt-get install -y build-essential libcurl4-openssl-dev libtbb12 cmake ninja-build python3-pip curl wget tar
wget https://raw.githubusercontent.com/ravi9/misc-scripts/main/openvino/ov-archive-install/install-openvino-from-archive.sh
chmod +x install-openvino-from-archive.sh
./install-openvino-from-archive.sh
cd ..
git clone https://github.com/ggml-org/llama.cpp
cd llama.cpp
source /opt/intel/openvino/setupvars.sh
sudo apt-get install libssl-dev # in case cmake can't find open ssl
cmake -B build/ReleaseOV -G Ninja -DCMAKE_BUILD_TYPE=Release -DGGML_OPENVINO=ON
cmake --build build/ReleaseOV --parallel
cd ../llm_experiments/
chmod +x run_test_model.sh