#!/bin/bash
# Description: Install bashrc

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

