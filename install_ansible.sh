#!/usr/bin/env bash

# Check to see if Ansible is already installed
echo ""
echo "Checking to see if Ansible is already installed"
if hash ansible 2>/dev/null ; then
  echo ""
  echo "Ansible is already installed"
  echo ""
  exit 2
fi

# distro info
echo ""
echo "Getting OS version..."
. /etc/os-release

# Install Ansible and run playbook

## Ubuntu
      echo "Importing Ansible signing keys"
      sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
      echo "Adding Ansible PPA, then installing Ansible"
      sudo apt-add-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu artful main"
      sudo apt-get update 
      sudo apt-get install ansible -y

echo "Starting Ansible file"
sudo ansible-playbook ansible_docker.yml
