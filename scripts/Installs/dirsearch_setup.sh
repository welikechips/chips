#!/bin/bash
# Description: DirSearch
mkdir -p /root/tools
cd /root/tools/
git clone https://github.com/maurosoria/dirsearch.git
cd /usr/bin/
ln -s /root/tools/dirsearch/dirsearch.py dirsearch
