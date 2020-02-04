#!/usr/bin/env bash
apt-get update
apt-get install fish
echo "set -g default-command /usr/bin/fish" >> ~/.tmux.conf
echo "set -g default-shell /usr/bin/fish" >> ~/.tmux.conf
echo 'set fish_greeting ""' >> /etc/fish/config.fish

