#!/usr/bin/env bash
# Description: Install DirSearch
mkdir /root/tools
cd /root/tools/
git clone https://github.com/maurosoria/dirsearch.git
cd /usr/bin/
ln -s /root/tools/dirseach/dirseach.py dirsearch
