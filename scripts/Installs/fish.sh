#!/usr/bin/env bash
apt-get update
apt-get install fish
sudo echo "set -g default-command /usr/bin/fish" >> ~/.tmux.conf
sudo echo "set -g default-shell /usr/bin/fish" >> ~/.tmux.conf
sudo echo 'set fish_greeting ""' >> /etc/fish/config.fish

