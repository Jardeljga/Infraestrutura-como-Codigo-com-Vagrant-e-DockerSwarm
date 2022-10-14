#!/bin/bash
sudo docker swarm init --advertise-addr=10.0.52.10
sudo docker swarm join-token worker | grep docker > /vagrant/script-nodes.sh

sudo docker volume create web-site

sudo apt install unzip -y
sudo wget https://www.dropbox.com/s/0c5s1dusog7sa2x/Site-Desafio-Docker.zip?dl=0
unzip -o 'Site-Desafio-Docker.zip?dl=0' -d /var/lib/docker/volumes/web-site/_data

sudo apt install nfs-server -y

sudo echo "/var/lib/docker/volumes/web-site/_data *(rw,sync,subtree_check)" >> /etc/exports
sudo exportfs -ar
