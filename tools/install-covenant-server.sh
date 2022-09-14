#!/bin/bash

sudo su
cd ~
git clone --recurse-submodules https://github.com/cobbr/Covenant
#wget https://download.visualstudio.microsoft.com/download/pr/e137cdac-0e15-46ec-bd60-14fe6ad50c41/30c102677cc4bd0f117cc026781ec5e8/dotnet-sdk-3.1.423-linux-x64.tar.gz
#mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-3.1.423-linux-x64.tar.gz -C $HOME/dotnet
#echo "export DOTNET_ROOT=$HOME/dotnet" >> ~/.bashrc
#echo "export PATH=$PATH:$HOME/dotnet" >> ~/.bashrc
apt install docker.io
docker build -t covenant .

SESSION=covenant
tmux -2 new-session -d -s $SESSION
# Setup a window for starting covenant server
tmux split-window -h
tmux select-pane -t 1
#tmux send-keys "export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1; cd ~/Covenant/Covenant && dotnet run" C-m
tmux send-keys "docker run -it -p 7443:7443 -p 80:80 -p 443:443 --name covenant -v /root/Covenant/Covenant/Data>:/app/Data covenant" C-m
tmux select-pane -t 2
tmux send-keys "curl https://ip.42.pl/raw" C-m

