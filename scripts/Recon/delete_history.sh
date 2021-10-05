#!/bin/bash
# Description: Delete History

read -r -p 'Please enter the starting number: ' starting_number
read -r -p 'Please enter how many to delete: ' how_many_to_delete
command="for x in {1..${how_many_to_delete}}; do history -d $((HISTCMD-1)) && history -d ${starting_number}; done"
echo "$command was copied to clipboard"
echo $command | xclip -sel clip