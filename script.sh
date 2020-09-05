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


#sudo git clone https://github.com/geerlingguy/ansible-role-nginx.git /etc/ansible/roles/geerlingguy.nginx
#sudo ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/geerlingguy.nginx/molecule/default/converge.yml

#sudo git clone https://github.com/geerlingguy/ansible-role-php.git /etc/ansible/roles/geerlingguy.php
#sudo git clone https://github.com/geerlingguy/ansible-role-git.git /etc/ansible/roles/geerlingguy.git
#sudo git clone https://github.com/geerlingguy/ansible-role-repo-remi.git /etc/ansible/roles/geerlingguy.repo-remi

#sudo ansible-playbook --connection=local --inventory 127.0.0.1, /etc/ansible/roles/geerlingguy.php/molecule/default/converge.yml
