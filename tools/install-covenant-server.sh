#!/bin/bash

sudo su
cd ~
git clone --recurse-submodules https://github.com/cobbr/Covenant
wget https://download.visualstudio.microsoft.com/download/pr/5dcee8cc-68e4-4b4f-8288-5ea8f95053ba/86c39872e9e206b9e103367de6b8f596/dotnet-sdk-3.1.419-linux-x64.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-3.1.419-linux-x64.tar.gz -C $HOME/dotnet
echo "export DOTNET_ROOT=$HOME/dotnet" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/dotnet" >> ~/.bashrc

SESSION=covenant
tmux -2 new-session -d -s $SESSION
# Setup a window for starting covenant server
tmux split-window -h
tmux select-pane -t 1
tmux send-keys "cd ~/Covenant/Covenant && dotnet run" C-m
tmux select-pane -t 2
tmux send-keys "curl https://ip.42.pl/raw" C-m

