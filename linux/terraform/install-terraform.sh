#!/bin/bash

# Install Terraform
echo "Add the HashiCorp GPG key."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo -n "Add the official HashiCorp Linux repository."
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
echo -n "Update and install."
sudo apt-get update -y && sudo apt-get install terraform -y
echo -n "Verify the installation"
terraform -help
