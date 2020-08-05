#!/bin/bash
sudo su
cd ~
~/chips/scripts/Installs/install-covenant.sh
sudo tmux new-session -s covenant -d 'cd ~/Covenant/Covenant; dotnet run;'
