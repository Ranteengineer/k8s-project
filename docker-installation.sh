#!/bin/bash
#Install Docker
sudo apt install docker.io
#Add Docker user to Docker group to have elevated priviledge
sudo usermod -aG docker "$USER" && newgrp docker
sudo apt install -y curl wget apt-transport-https
# Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version
