#!/bin/bash

set -exuo pipefail

# https://docs.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#scripted-install
curl -sL https://dot.net/v1/dotnet-install.sh | bash -c Current

echo "PATH=\$PATH:\$HOME/.dotnet" > ~/.bashrc
