#!/bin/bash
# Description: Tmux
cd 
sudo git clone https://github.com/welikechips/.tmux.git
sudo git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo ln -s -f .tmux/.tmux.conf
sudo cp .tmux/.tmux.conf.local .
sudo gnome-terminal -- tmux new -s tmux-setup
echo "Press prefix + r to reload the tmux config"
echo "Press prefix + I to install the plugins"
