#!/bin/bash
# Description: Default Applications and Setup
sudo apt-get update
sudo apt-get -y install snapd
sudo systemctl enable --now snapd
sudo apt-get -y install gobuster 
sudo apt-get -y install steghide 
sudo apt-get -y install copyq 
sudo apt-get -y install ltrace
sudo apt-get -y install strace 
sudo apt-get -y install gnome-screenshot 
sudo apt-get -y install exiftool
sudo apt-get -y install dnsutils
sudo apt-get -y install golang-go
sudo apt-get -y install dirsearch
sudo apt-get -y install flameshot
sudo apt-get -y install xclip
sudo apt-get -y install xfce4-terminal
sudo apt-get -y install python3-pip
sudo apt-get -y install jd-gui
sudo apt-get -y install chromium
sudo apt-get -y install jxplorer
sudo apt-get -y install golang-go
sudo snap install ruby --classic
pip3 install updog
pip3 install jsbeautifier
mkdir -p /usr/share/wordlists/
cd /usr/share/wordlists/
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
gem install evil-winrm
go install -v github.com/tomnomnom/anew@latest
go install github.com/tomnomnom/gron@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/waybackurls@latest
echo 'export CHROMIUM_FLAGS="$CHROMIUM_FLAGS --password-store=detect --no-sandbox --user-data-dir"' >> /etc/chromium.d/default-flags
