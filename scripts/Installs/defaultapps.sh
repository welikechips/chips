#!/bin/bash
# Description: Default Applications and Setup
sudo apt-get -y install gobuster steghide copyq ltrace strace gnome-screenshot network-manager-pptp network-manager-pptp-gnome network-manager-l2tp network-manager-l2tp-gnome exiftool
sudo apt-get -y install dnsutils golang-go flameshot xclip python3-pip jd-gui chromium jxplorer network-manager-openconnect-gnome network-manager-openvpn network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-vpnc network-manager-vpnc-gnome
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
