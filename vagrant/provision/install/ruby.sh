#!/bin/bash
set -exuo pipefail

# Install rbenv from https://github.com/rbenv/rbenv-installer#rbenv-installer
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

cat <<EOT >> ~/.profile
if [ -d "\$HOME/.rbenv/bin" ] ; then
    PATH="\$HOME/.rbenv/bin:\$PATH"
fi
EOT

echo -e "eval \"\$(rbenv init -)\"" >> ~/.bashrc

# Install dependencies to compile rubies - based on https://www.itzgeek.com/post/how-to-install-ruby-on-rails-on-ubuntu-20-04/#install-dependencies
sudo apt-get update
sudo apt-get install --yes \
    build-essential \
    libreadline-dev \
    libssl-dev \
    libyaml-dev \
    zlib1g-dev
