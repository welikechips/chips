#!/bin/bash
git clone https://github.com/welikechips/chips /root/chips
ln -s /root/chips/menu.py /usr/local/bin/chips
echo "2" | /root/chips/scripts/Installs/bashrc.sh
/root/chips/scripts/Installs/install-covenant.sh
/root/chips/scripts/Installs/tmux.sh
tmux new -s Covenant
cd /root/Covenant/Covenant
dotnet run
