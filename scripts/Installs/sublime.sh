#!/bin/bash
# Description: Sublime
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text
git clone https://github.com/victorporof/Sublime-HTMLPrettify.git ~/.config/sublime-text-3/Packages/Sublime-HTMLPrettify
