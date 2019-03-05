#!/usr/bin/env bash
# Description: Echo's Command for One URL
read -r -p "What is the url?" url
command="dirsearch -u $url -w /usr/share/wordlists/dirb/big.txt -f -t 100 -r -e php,html,js,txt -x 403"
echo $command