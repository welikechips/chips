#!/bin/bash
# Description: Dig
path="/root/scans/"
declare -a opt_name=()
declare -A opt_file=()
i=0
while read line
do
	opt_name[ $i ]=$(basename "${line}")
	opt_file[${opt_name[$i]}]="$line"
	(( i++ ))
done < <(ls $path)

PS3='Which domain do you want to dig? (q to quit): '
select name in "${opt_name[@]}"; do
	case "$name" in
		"") break ;;
		*) 	domain=${opt_file[$name]}
			dig -f $path$domain/sublist.txt > $path/$domain/dig.txt
			echo "Dig File Written!"
			exit;;
	esac
done