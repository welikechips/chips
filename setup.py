#!/usr/bin/env python
# -*- coding: utf-8 -*-
# title           :setup.py
# description     :Help install programs on Kali Setup
# author          :weirdatfirst
# date            :
# usage           :
# =======================================================================

# Import the modules needed to run the script.
import sys, os
import pyperclip
import fileinput
import requests
import subprocess

pressany = ("Press any key to return to main menu")
# Main definition - constants
menu_actions = {}


# =======================
#     MENUS FUNCTIONS
# =======================

# Main menu
def main_menu():
    os.system('clear')

    print("Install commonly used programs ")
    print("1. Sublime")
    print("2. Default Applications")
    print("3. Java 8")
    print("4. Tmux Color and Plugins")
    print("5. Vpnpicker")
    print("6. Setup Folders for Tests")
    print("7. OpenVas")
    print("8. Pycharm")
    print("\n0. Quit")
    choice = raw_input(" >>  ")
    exec_menu(choice)
    return


# Back to main menu
def back():
    raw_input(pressany)
    menu_actions['main_menu']()


# Exit program
def exit():
    sys.exit()


# Execute menu
def exec_menu(choice):
    os.system('clear')
    ch = choice.lower()
    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            print
            "Invalid selection, please try again.\n"
            menu_actions['main_menu']()
    return


# setup sublime
def sublime():
    subprocess.call("scripts/sublime.sh")
    back()


# installs filezilla, copyq, and gnomescreenshot
def defaultapps():
    subprocess.call("scripts/defaultapps.sh")
    back()


# Installs Java 8
def java8():
    subprocess.call("scripts/java8.sh")
    back()


# Installs Tux
def tmuxinstall():
    subprocess.call("scripts/tmux.sh", shell=True)
    back()


# Install vpnpicker
def vpnpicker():
    subprocess.call("scripts/vpnpicker.sh")
    back()


# Install vpnpicker
def testsetup():
    subprocess.call("scripts/testsetup.sh", shell=True)
    back()


# Install OpenVas Vulnerablity scanner
def openvas():
    subprocess.call("scripts/openvas.sh", shell=True)
    print("Make sure you copy out the admin password!")
    back()


# Install Pycharm
def pycharm():
    subprocess.call("scripts/pycharm.sh", shell=True)
    back()


# =======================
#    MENUS DEFINITIONS
# =======================

# Menu definition
menu_actions = {
    'main_menu': main_menu,
    '1': sublime,
    '2': defaultapps,
    '3': java8,
    '4': tmuxinstall,
    '5': vpnpicker,
    '6': testsetup,
    '7': openvas,
    '8': pycharm,
    '9': back,
    '0': exit,
}

# =======================
#      MAIN PROGRAM
# =======================

# Main Program
if __name__ == "__main__":
    # Launch main menu
    main_menu()
