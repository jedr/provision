#!/bin/bash

set -x

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade --yes
apt-get install --yes \
  bash-completion # not installed by default in "bento/ubuntu-20.04" vagrant box
  net-tools # provides ifconfig

echo "export EDITOR=vim" >>/home/vagrant/.bashrc

# Fix VS Code complaining about number of files to watch https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
