#!/bin/bash
#Install kubectl from the latest release
curl -LO https://storage.googleapis.com/kubernetes-release/release/`
curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
#Make kubectl an executable
chmod +x kubectl
sudo mv kubectl /usr/local/bin
#Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
#Start Minikube service
minikube start - vm-driver=docker
kubectl version -o yaml
