#!/bin/bash
# Description: Cleanup the favorites bar
dconf write /org/gnome/shell/favorite-apps "['firefox-esr.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'Burp Suite Professional-0.desktop', 'sublime_text.desktop', 'org.gnome.Screenshot.desktop', 'kali-sparta.desktop', 'com.github.hluk.copyq.desktop', 'filezilla.desktop', 'kali-dirbuster.desktop']"
