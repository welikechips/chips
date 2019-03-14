#!/usr/bin/env python
# -*- coding: utf-8 -*-
# title           :masscan.py
# description     :automate scanning
# author          :
# date            :
# version         :0.1
# usage           :python masscan CIDR
# =======================================================================

# Import the modules needed to run the script.
import sys,os
if len(sys.argv) != 3:
    print "Usage: %s <CIDR> <PORTS>" % (sys.argv[0])
    sys.exit(0)

CIDR = sys.argv[1]
ports = sys.argv[2]
args = (CIDR,ports)


def masscan(CIDR,port):
    command = "masscan %s -p %s --banners --source-ip 10.0.0.2 --max-rate 100000 -oX scan-01.xml" % args
    #os.system(command)
    print command

