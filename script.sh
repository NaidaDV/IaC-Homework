#!/bin/bash
yum -y update
sudo yum install python38-pip.noarch -y
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
sudo dnf install ansible -y
sudo yum install git -y
sudo yum install nano -y
sudo yum install wget -y
sudo git clone https://github.com/NaidaDV/for-IaC-HW.git /etc/ansible/roles
sudo ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/playbook.yml
