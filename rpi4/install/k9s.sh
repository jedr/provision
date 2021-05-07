#!/bin/bash

K9S_VERSION=v0.24.7
sudo mkdir /opt/k9s
curl -Lo- "https://github.com/derailed/k9s/releases/download/${K9S_VERSION}/k9s_Linux_arm64.tar.gz" | sudo tar -C /opt/k9s -xzf -
sudo ln -s /opt/k9s/k9s /usr/bin/k9s

