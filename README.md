# provision

Provisioning scripts and tools

## Creating a new `jedr` Vagrant machine

Run:

```sh
./macos/create-vagrant-jedr.sh ~/jedr
```

The parameter is the path where you want the Vagrantfile to be put.

The script takes the Vagrantfile from [./vagrant/Vagrantfile](./vagrant/Vagrantfile),
modifies a few things and creates the machine.
