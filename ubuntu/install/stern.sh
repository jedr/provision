#!/bin/bash

set -exuo pipefail

# Install latest binary from GitHub Releases
curl -s https://api.github.com/repos/stern/stern/releases/latest |
  jq -r '.assets[] | select(.name | test("linux_amd")) | .browser_download_url' |
  xargs curl --location |
  tar -xzf - --directory ~/bin --strip-components=1 --wildcards 'stern*/stern'

