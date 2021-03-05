#!/bin/bash

set -x

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get --yes upgrade

sudo apt-get install --yes make gcc

# Install Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install --yes docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker vagrant

# Install microk8s
sudo snap install microk8s --classic --channel=1.19/stable
microk8s.status --wait-ready
ufw allow in on cbr0
ufw allow out on cbr0
ufw default allow routed
microk8s enable registry
microk8s enable storage
microk8s enable dns
microk8s.kubectl config view --raw > /home/vagrant/.kube/config
sudo usermod -a -G microk8s vagrant

# Install kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install --yes kubectl
## Bash completion
echo "source <(kubectl completion bash)" >> /home/vagrant/.bashrc
## Alias
{
    echo "alias k=kubectl"
    echo "complete -F __start_kubectl k"
} >> /home/vagrant/.bashrc

# Install Helm
HELM_VERSION=v3.5.2
mkdir /opt/helm3
curl "https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz" | tar -xz -C /opt/helm3
ln -s /opt/helm3/linux-amd64/helm /usr/bin/helm3
ln -s /usr/bin/helm3 /usr/bin/helm

# Install Golang
GO_VERSION="1.16"
wget "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz"
tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz
rm go${GO_VERSION}.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bashrc
PATH=$PATH:/usr/local/go/bin

# Install k9s
# go get -u github.com/derailed/k9s

# Install yq
go get -u github.com/mikefarah/yq/v4

# Wait for microk8s ready
while true; do
  kubectl -n kube-system get services 1>/dev/null 2>&1 && break
  echo 'Waiting for k8s server'
  sleep 1
done
