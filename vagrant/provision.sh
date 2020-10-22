#!/bin/bash

set -x

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade --yes
apt-get install --yes \
    net-tools # provides ifconfig

echo "export EDITOR=vim" >> /home/vagrant/.bashrc
