#!/bin/bash

set -exuo pipefail

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Bash completion
echo "source <(kubectl completion bash)" >> ~/.bashrc

# Alias
{
    echo "alias k=kubectl"
    echo "complete -F __start_kubectl k"
} >> ~/.bashrc
