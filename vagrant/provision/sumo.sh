#!/bin/bash
set -exuo pipefail

# Copy GitHub SSH keys
mkdir -p ~/.ssh
cp -r /vagrant/.ssh/* ~/.ssh

# Configure Git client
git config --global user.name "Andrzej Stencel"
git config --global user.email "astencel@sumologic.com"

mkdir -p ~/sumo
cd ~/sumo

git clone git@github.com:SumoLogic/logstash-output-sumologic.git
git clone git@github.com:SumoLogic/sumologic.github.io.git
git clone git@github.com:SumoLogic/sumologic-kubernetes-collection.git
git clone git@github.com:SumoLogic/sumologic-kubernetes-fluentd.git
git clone git@github.com:SumoLogic/sumologic-kubernetes-tools.git

mkdir -p ~/sumo/forks
cd ~/sumo/forks

git clone git@github.com:astencel-sumo/kubeclient.git
