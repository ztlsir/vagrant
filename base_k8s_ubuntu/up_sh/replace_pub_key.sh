#!/bin/bash

echo "replace .ssh authorized_keys"
wget https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
mv vagrant.pub .ssh/authorized_keys
chmod go-w /home/vagrant/.ssh/authorized_keys