#!/bin/bash

# Install AWS-Cliaws 
echo "|*** Updare Repository"
sudo apt update
echo "|*** Install, update and verify"
sudo apt-get install awscli -y && aws --version
echo "|*** Verify the installation"
