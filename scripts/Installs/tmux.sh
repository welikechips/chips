#!/bin/bash
# Description: Tmux
cd 
git clone https://github.com/welikechips/.tmux.git
git clone https://github.com/tmux-plugins/tpm .tmux/plugins/tpm
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
#sudo gnome-terminal -- tmux new -s tmux-setup
echo "Press prefix + r to reload the tmux config"
echo "Press prefix + I to install the plugins"
