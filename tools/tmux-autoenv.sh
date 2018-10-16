#!/bin/bash
tmux setenv IP ${1}
tmux setenv WD $(pwd)
export IP=${1}
export WD=$(pwd)
echo "Current IP Address is ${IP} and current working directory is ${WD}"
