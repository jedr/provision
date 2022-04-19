#!/bin/bash

set -exuo pipefail

git config --global user.name "jedr"
git config --global user.email "andrzej.stencel@gmail.com"

mkdir -p ~/jedr
cd ~/jedr

# Clone repositories
git clone git@github.com:jedr/dude-wheres-my-stocks.git
git clone git@github.com:jedr/JokeCentral.git
git clone git@github.com:jedr/provision.git
git clone git@github.com:ziher/ziher.git
