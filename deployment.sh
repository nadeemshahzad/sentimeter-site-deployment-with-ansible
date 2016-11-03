#!/bin/sh

#### Setting up ansible repository &&  update and upgrade the system

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update

### Installing pre-requisit to run playbook
sudo apt-get install -y ansible git-core
cd /tmp && sudo git clone https://github.com/nadeemshahzad/sentimeter-ansible.git 
sudo ansible-playbook -i "localhost," -c local sentimeter-ansible/sentimeter.yml
