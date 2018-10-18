#!/usr/bin/env python
# -*- coding: utf-8 -*-
# title           :setup.py
# description     :Help install programs on Kali Setup
# author          :weirdatfirst
# date            :
# usage           :
# =======================================================================

# Import the modules needed to run the script.
import sys
import os
import subprocess

pressany = ("Press any key to return to main menu")
# Main definition - constants

# =======================
#     MENUS FUNCTIONS
# =======================

# Main menu

help_text = {
    # Pentesting
    "openvas": "Openvas",
    # Utilities
    "defaultapps": "Default Applications",
    "java8": "Java 8",
    "pycharm": "Pycharm",
    "sublime": "Sublime",
    "testsetup": "Setup Folders for Tests",
    "tmux": "Tmux Color and Plugins",
    "vpnpicker": "Vpnpicker",
    "screen": "Adjust Screen for Kali",
    "InitialSetup": "Run Initial Setup for Kali instance",
    "cleanup_favorites": "Cleanup the favorites bar",
    "burp_suite": "Burp Suite Professional"
}

choices = {}

dir_path = os.path.dirname(os.path.realpath(__file__))

the_password = ""


def get_files(directory):
    return [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]


def list_menu(menu, path, starting_id=0):
    i = 1
    for list_item in menu:
        base_name = os.path.basename(list_item)
        file_name = os.path.splitext(base_name)[0]
        try:
            list_item_value = help_text[file_name]
        except KeyError:
            list_item_value = file_name
        if starting_id is 0:
            choices.update({str(i): os.path.join(path, list_item)})
            print("{}. {}".format(i, list_item_value))
        else:
            choices.update({str(starting_id) + str(i): os.path.join(path, list_item)})
            print("{}{}. {}".format(starting_id, i, list_item_value))
        i = i + 1
    print("\n0. Quit")
    print("9. Back to Main Menu")


def execute_choice():
    choice = input(">>>>>> ")
    exec_menu(choice)
    return


def main_menu():
    os.system('cls' if os.name == 'nt' else 'clear')
    try:
        the_password = sys.argv[1]
    except IndexError:
        print("")
    print("Install commonly used programs ")
    path = os.path.join(dir_path, "scripts")
    list_items = next(os.walk(path))[1]
    list_menu(list_items, path)
    execute_choice()


def create_submenu(choice):
    path = choice
    list_items = get_files(path)
    list_menu(list_items, path, 1)
    execute_choice()


# Back to main menu
def back():
    input(pressany)
    menu_actions['main_menu']()


# Exit program
def exit():
    sys.exit()


# Execute menu
def exec_menu(choice):
    os.system('cls' if os.name == 'nt' else 'clear')
    ch = choice.lower()
    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            try:
                the_choice = choices[ch]
                if os.path.isdir(the_choice):
                    create_submenu(the_choice)
                else:
                    subprocess.call(the_choice + " " + the_password, shell=True)
                back()
            except KeyError:
                print("Invalid selection, please try again.\n")
                menu_actions['main_menu']()
    return


# =======================
#    MENUS DEFINITIONS
# =======================

# Menu definition
menu_actions = {
    'main_menu': main_menu,
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