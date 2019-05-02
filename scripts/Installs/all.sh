#!/bin/bash
# Description: All Except Openvas
path=$(pwd)
files=$path/*
all=$path/all.sh
for f in $files
do
	if [[ $f == $path/all.sh ]]; then
		:
	elif [[ $f == $path/openvas.sh ]]; then
		:
	else
		$f
	fi
done

