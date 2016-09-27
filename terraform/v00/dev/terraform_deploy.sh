#!/bin/bash
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
