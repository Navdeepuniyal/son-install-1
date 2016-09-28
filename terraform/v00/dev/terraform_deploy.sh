#!/bin/bash

cwd=$(pwd)

#Install Terraform
wget -O ~/terraform.zip https://releases.hashicorp.com/terraform/0.7.4/terraform_0.7.4_linux_amd64.zip
sudo apt-get install unzip
sudo unzip ~/terraform.zip -d /etc/terraform
export PATH=$PATH:/etc/terraform

#Install and setup ansible
mkdir ~/ansible
git clone git://github.com/ansible/ansible.git --recursive ~/ansible
cd ~/ansible
source ./hacking/env-setup
sudo apt-get install python-pip python-dev build-essential -y
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
sudo pip install paramiko
sudo pip install PyYAML
sudo pip install Jinja2
sudo pip install httplib2
sudo pip install six
sudo pip install markupsafe

export ANSIBLE_HOST_KEY_CHECKING=False

#Change  permissions of the private key
mkdir ~/ansible_inventory
cd $cwd
chmod 600 son-ift-ptin.rsa
cp son-ift-ptin.rsa ~/ansible_inventory/

#Deploy VM
terraform plan
terraform apply

#Generate Ansible Inventory
terraform output ansible_inventory > ~/ansible_inventory/hosts
cd ../../..
sleep 5s

#Deploy Sonata SP
eval "$(ssh-agent)"
ssh-add ~/ansible_inventory/son-ift-ptin.rsa
ansible-playbook son-cmud.yml -e "operation=install service=all" -i ~/ansible_inventory/hosts
