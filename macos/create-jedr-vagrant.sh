#!/bin/bash
set -euo pipefail

JEDR_PATH=${1:-}
if [ "$JEDR_PATH" == "" ]; then
  echo "Usage:"
  echo "  $0 path/to/jedr/dir"
  echo
  exit 1
fi

echo "Will create Vagrant box 'jedr' in $JEDR_PATH"

mkdir -p "$JEDR_PATH"
cp ../vagrant/Vagrantfile "$JEDR_PATH"
cp -r ../vagrant/provision "$JEDR_PATH"

cd "$JEDR_PATH"

sed -i '' -e 's/vagruntu-focal/jedr/' Vagrantfile
sed -i '' -e 's/host: 2200/host: 2202/' Vagrantfile
sed -i '' -e 's/ubuntu\/focal64/bento\/ubuntu-20.04/' Vagrantfile

mkdir -p .ssh
cp ~/.ssh/jedr* .ssh/
cat <<EOT > .ssh/config
Host github.com
  Hostname github.com
  User git
  IdentityFile ~/.ssh/jedr
  IdentitiesOnly yes
EOT

vagrant up
