#!/bin/bash
# Description: Ubuntu
sudo apt-get update
sudo chsh -s /bin/bash
sudo apt-get -y install snap
sudo apt-get -y install gobuster 
sudo apt-get -y install steghide 
sudo apt-get -y install copyq 
sudo apt-get -y install ltrace
sudo apt-get -y install strace 
sudo apt-get -y install gnome-screenshot 
sudo apt-get -y install exiftool
sudo apt-get -y install dnsutils
sudo apt-get -y install golang-go
sudo apt-get -y install flameshot
sudo apt-get -y install xclip
sudo apt-get -y install xfce4-terminal
sudo apt-get -y install python3-pip
sudo apt-get -y install jd-gui
sudo apt-get -y install chromium
sudo apt-get -y install jxplorer
sudo apt-get -y install golang-go
sudo apt-get -y install nmap

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

##Install bashrc
cd
download_dir="./tools/bashrc-files/"
root_bashrc="./.bashrc"
git clone https://github.com/welikechips/bashrc/ ${download_dir}

prompt="Whos bashrc do you want to install?"
options=( $(ls ${download_dir}) )

PS3="$prompt "
select opt in "${options[@]}" "Quit" ; do 
    if (( REPLY == 1 + ${#options[@]} )) ; then
        exit

    elif (( REPLY > 0 && REPLY <= ${#options[@]} )) ; then
        echo  "You picked $opt."
        #backup old file
		echo "Backing up old .bashrc."
		mv ${root_bashrc} ${root_bashrc}.backup
		echo "Copying new ${download_dir}${opt} to ${root_bashrc}."
		cp ${download_dir}${opt} ${root_bashrc}
		echo "Sourcing new .bashrc"
		source ${root_bashrc}
        break

    else
        echo "Invalid option. Try another one."
    fi
done  
##Install Tmux
sudo apt install tmux
cd 
git clone https://github.com/welikechips/.tmux.git
git clone https://github.com/tmux-plugins/tpm .tmux/plugins/tpm
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
#sudo gnome-terminal -- tmux new -s tmux-setup
echo "Press prefix + r to reload the tmux config"
echo "Press prefix + I to install the plugins

# Description: Shellcode
cd 
mkdir -p tools
cd tools	
git clone https://github.com/welikechips/shellcode.git
path=$(pwd)
ln -s ${path}/shellcode/shellcode.py /usr/bin/shellcode
cd shellcode
pip3 install -r requirements.txt
