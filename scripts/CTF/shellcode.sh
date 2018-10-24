#!/bin/bash
# Description: Shellcode Maker
cd 
mkdir -p tools
cd tools	
git clone https://github.com/welikechips/shellcode.git
path=$(pwd)
ln -s ${path}/shellcode/shellcode.py /usr/bin/shellcode
