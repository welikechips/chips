#!/bin/bash
files=/root/work/split/*
word="output"
for f in $files; do
        wfuzz -c -w $f --hl 64 --hc 404 -f $f$word https://ford.webex.com/webappng/api/v1/pmr/FUZZ/view?siteurl=ford
done
