#!/bin/bash
wget -O /etc/terraform/terraform.zip https://releases.hashicorp.com/terraform/0.7.4/terraform_0.7.4_linux_amd64.zip
unzip /etc/terraform.zip -d /etc/terraform
export PATH=$PATH:/etc/terraform
cp son-ift-ptin.rsa /etc/ansible
ssh-add /etc/ansible/son-ift-ptin.rsa
terraform plan
terraform apply
#mkdir /tmp/ansible
#touch /tmp/ansible/hosts
terraform output ansible_inventory > /etc/ansible/hosts
cd ../../..
sleep 5s
ansible-playbook son-cmud.yml -e "operation=install service=all"
