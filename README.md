# provision

Provisioning scripts and tools.

## Provision an Ubuntu machine

Basic stuff (install updates, change shell to zsh, install Midnight Commander etc.)

```shell
curl -s https://raw.githubusercontent.com/jedr/provision/main/ubuntu/base.sh | bash
```

For development (git, VS Code, Docker etc.):

```shell
curl -s https://raw.githubusercontent.com/jedr/provision/main/ubuntu/dev.sh | bash
```

## Creating a new `jedr` Vagrant machine

Run:

```sh
./macos/create-vagrant-jedr.sh ~/jedr
```

The parameter is the path where you want the Vagrantfile to be put.

The script takes the Vagrantfile from [./vagrant/Vagrantfile](./vagrant/Vagrantfile),
modifies a few things and creates the machine.