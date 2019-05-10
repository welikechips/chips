#!/bin/bash
# Description: Default Applications
sudo apt-get -y install gobuster steghide copyq ltrace strace filezilla gnome-screenshot network-manager-pptp network-manager-pptp-gnome network-manager-l2tp network-manager-l2tp-gnome
cd /usr/share/wordlists/
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/fuzzdb-project/fuzzdb.git