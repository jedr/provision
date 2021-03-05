#!/bin/bash
set -exuo pipefail

GO_VERSION="1.16"
wget "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
rm go${GO_VERSION}.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
PATH=$PATH:/usr/local/go/bin
