#!/bin/bash
# Description: Shellcode
cd 
mkdir -p tools
cd tools	
git clone https://github.com/welikechips/shellcode.git
path=$(pwd)
ln -s ${path}/shellcode/shellcode.py /usr/bin/shellcode
cd shellcode
pip3 install -r requirements.txt
