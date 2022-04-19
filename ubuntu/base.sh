#!/bin/bash

set -exuo pipefail

sudo apt-get update
sudo apt-get upgrade --yes

# Install some basic tools like zsh and Midnight Commander (git is needed for zsh)
sudo apt-get install --yes \
  curl \
  git \
  htop \
  mc \
  net-tools \
  vim \
  zsh

curl -O https://raw.githubusercontent.com/jedr/provision/main/.zshrc

# Use zsh as default shell
chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -O https://raw.githubusercontent.com/jedr/provision/main/.vimrc
echo "export EDITOR=vim" >> ~/.bashrc
