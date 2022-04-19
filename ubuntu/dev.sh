#!/bin/bash

mkdir -p ~/jedr
cd ~/jedr

# Git is already installed in `base.sh`.
git clone git@github.com:jedr/provision.git

cd provision

./ubuntu/install/vscode.sh
