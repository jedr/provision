#!/bin/bash

set -exuo pipefail

sudo apt-get update --yes
sudo apt-get upgrade --yes

apt-get install --yes \
  curl \
  net-tools \
  vim

cp ../.vimrc ~
echo "export EDITOR=vim" >> ~/.bashrc
