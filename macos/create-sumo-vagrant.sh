#!/bin/bash
set -euo pipefail

SUMO_PATH=${1:-}
if [ "$SUMO_PATH" == "" ]; then
  echo "Usage:"
  echo "  $0 path/to/sumo/dir"
  echo
  exit 1
fi

echo "Will create Vagrant box 'sumo' in $SUMO_PATH"

mkdir -p "$SUMO_PATH"
cp ../vagrant/Vagrantfile "$SUMO_PATH"

mkdir -p "$SUMO_PATH"/vagrant-provision
cp -r ../vagrant/provision/* "$SUMO_PATH"/vagrant-provision

pushd "$SUMO_PATH"

sed -i '' -e 's/vagruntu-focal/sumo/' Vagrantfile
sed -i '' -e 's/host: 2200/host: 2201/' Vagrantfile
sed -i '' -e 's#/provision/.*.sh#/vagrant-provision/sumo.sh' Vagrantfile

mkdir -p .ssh
cp ~/.ssh/id_rsa* .ssh/
cat <<EOT > .ssh/config
Host github.com
  Hostname github.com
  User git
  IdentityFile ~/.ssh/id_rsa
  IdentitiesOnly yes
EOT

vagrant up

popd
