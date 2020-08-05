#!/bin/bash
sudo su
cd ~
~/chips/scripts/Installs/install-covenant.sh
sudo tmux new-session -d -s covenant cd ~/Covenant/Covenant && dotnet run
