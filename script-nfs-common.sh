#!/bin/bash
sudo docker volume create web-site
sudo apt install nfs-common -y
sudo showmount -e 10.0.52.10
sudo mount 10.0.52.10:/var/lib/docker/volumes/web-site/_data /var/lib/docker/volumes/web-site/_data
