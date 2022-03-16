#!/bin/bash
# Description: Impacket-SMB opens SMB in path named files (with username and password)
echo "What is the password the smb folder"
read password
impacket-smbserver -smb2support files `pwd` -username chips -password ${password}
