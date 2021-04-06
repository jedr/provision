#!/bin/bash

set -exuo pipefail

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install --yes kubectl

# Bash completion
echo "source <(kubectl completion bash)" >> ~/.bashrc

# Alias
{
    echo "alias k=kubectl"
    echo "complete -F __start_kubectl k"
} >> ~/.bashrc
