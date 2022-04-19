#!/bin/bash

set -exuo pipefail

# Bash completion
echo "source <(kubectl completion bash)" >> ~/.bashrc

# Alias
{
    echo "alias k=kubectl"
    echo "complete -F __start_kubectl k"
} >> ~/.bashrc
