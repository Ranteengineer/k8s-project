#!/bin/bash
# Update and upgrade package manager
sudo apt update -y && sudo apt upgrade -y
# Reboot server
sudo reboot
# Reconnect t server using ssh
ssh -i key.pem username@publicIP