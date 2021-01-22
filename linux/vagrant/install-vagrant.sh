#!/bin/bash

echo "Check curl"
if ! command -v curl &> /dev/null
then
    echo "ERROR: curl could not be found"
    exit
fi

# Install Vagrant
echo "|*** Update components"
sudo apt update
sudo apt install virtualbox
echo "|*** Add vagrant"
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
echo "|*** Update,install and verify"
sudo apt install ./vagrant_2.2.9_x86_64.deb
echo "|*** Verify the installation"
vagrant --version

