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
