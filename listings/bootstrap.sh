#!/usr/bin/env bash

cd /vagrant
sudo rm /var/lib/apt/lists/* -R
sudo apt-get update
sudo apt-get upgrade -y

# whatever you want to provision comes here
# right now only shell provisioning works in this box
# chef/puppet will be added (eventually)

sudo pip3 install -r requirements.txt

echo "provisioner is done"
exit 0
