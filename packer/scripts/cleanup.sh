#!/bin/bash -eux
#remove ansible

#pip3 uninstall ansible

#apt
# Uninstall Ansible and remove PPA.
sudo apt -y remove --purge ansible
sudo apt-add-repository --remove ppa:ansible/ansible

# Apt cleanup.
sudo apt -y autoremove
sudo apt -y update