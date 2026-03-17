#!/bin/bash

#sudo snap install docker
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/quent/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/quent/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
sudo apt-get install build-essential
brew install gcc
