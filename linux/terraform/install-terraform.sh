#!/bin/bash

echo "Check curl"
if ! command -v curl &> /dev/null
then
    echo "ERROR: curl could not be found"
    exit
fi

# Install Terraform
echo "|*** Add the HashiCorp GPG key."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo "|*** Add the official HashiCorp Linux repository."
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
echo "|*** Update,install and verify"
sudo sudo snap install terraform && terraform -help
echo "|*** Verify the installation"

