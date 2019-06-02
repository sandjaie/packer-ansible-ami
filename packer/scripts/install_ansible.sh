#!/bin/bash -eux

# Install Ansible repository.
# amazon linux
# sudo yum -y install python3
# sudo pip3 install ansible

#apt
sudo apt -y update
sudo apt -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

# Install Ansible.
sudo apt -y update
sudo apt -y install ansible