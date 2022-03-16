#!/bin/bash
# Description: New Kali install

sudo apt-get install xfce4-terminal
echo "Make sure to delete old terminal emulator from launcher"
sudo chsh -s /bin/bash
sudo apt install kali-root-login
sudo passwd
sudo reboot
