se#!/bin/bash
# Description: Set Fish as default tmux shell
apt-get update
apt-get install fish
sudo echo "set -g default-command /usr/bin/fish" >> ~/.tmux.conf
sudo echo "set -g default-shell /usr/bin/fish" >> ~/.tmux.conf


