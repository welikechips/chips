#!/bin/bash
# Description: All Except Openvas/Initial Setup
path=/root/chips/scripts/Installs/
files=$path/*
all=$path/all.sh
for f in $files
do
	if [[ $f == $path/all.sh ]]; then
		:
	elif [[ $f == $path/openvas.sh ]]; then
		:
	elif [[ $f == $path/initial_setup.sh ]]; then
		:
	else
		$f
	fi
done

