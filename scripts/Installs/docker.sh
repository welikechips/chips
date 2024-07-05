#!/bin/bash
# Description: Docker
apt-get update
sudo apt install -y docker.io
sudo systemctl enable docker --now
