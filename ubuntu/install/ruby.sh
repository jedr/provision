#!/bin/bash

set -exuo pipefail

# Install rbenv https://github.com/rbenv/rbenv#installation
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc

# Install rbenv-build plugin for `rbenv install` command https://github.com/rbenv/ruby-build#installation
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Install dependencies to build rubies
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
