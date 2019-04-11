#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# title           :menu.py
# description     :Help install programs on Kali Setup
# author          :weirdatfirst and tiltedtimmy
# date            :
# usage           :testing
# =======================================================================

# Import the modules needed to run the script.
import sys
import os
import subprocess

# Main definition - constants

# =======================
#     MENUS FUNCTIONS
# =======================

# Main menu

welcome = """

    _________   ___ ___ ._____________  _________
    \_   ___ \ /   |   \|   \______   \/   _____/
    /    \  \//    ~    \   ||     ___/\_____  \ 
    \     \___\    Y    /   ||    |    /        /
     \______  /\___|_  /|___||____|   /_______  /
            \/       \/                       \/ 

"""
choices = {}

breadcrumbs = []

dir_path = os.path.dirname(os.path.realpath(__file__))

def get_files(directory):
    s_directory = sorted(os.listdir(directory))
    return [f for f in s_directory if os.path.isfile(os.path.join(directory, f))]


def list_menu(menu, path, starting_id=0):
    i = 1
    for list_item in menu:
        base_name = os.path.basename(list_item)
        file_name = os.path.splitext(base_name)[0]
        file_path = os.path.join(path, list_item)
        list_item_value = False
        if os.path.isfile(file_path):
            with open(file_path, 'r') as f:
                for line in f:
                    if "# Description:" in line:
                        list_item_value = line.replace("# Description:", "").lstrip(" ").rstrip("\n")
        if list_item_value is False:
            list_item_value = file_name
        if starting_id is 0:
            choices.update({str(i): file_path})
            print("{}. {}".format(i, list_item_value))
        else:
            choices.update({str(starting_id) + str(i): file_path})
            print("{}{}. {}".format(starting_id, i, list_item_value))
        i = i + 1
    print("\n9. Back to Main Menu")
    print("0. Quit")


def execute_choice():
    choice = input(">>>>>> ")
    exec_menu(choice)
    return


def main_menu():
    os.system('cls' if os.name == 'nt' else 'clear')
    breadcrumbs.clear()
    print(welcome)
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
    input("Press any key to return")
    breadcrumbs.pop()
    exec_menu(breadcrumbs[-1])


# Exit program
def exit():
    sys.exit()


# Execute menu
def exec_menu(choice):
    os.system('cls' if os.name == 'nt' else 'clear')
    ch = str(choice).lower()
    if ch not in breadcrumbs:
        breadcrumbs.append(ch)
    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            try:
                chars = ch.split(",")
                for x in chars:
                    the_choice = choices[x]
                    if os.path.isdir(the_choice):
                        create_submenu(the_choice)
                    else:
                        subprocess.call(the_choice, shell=True)
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
    '9': main_menu,
    '0': exit,
}

# =======================
#      MAIN PROGRAM
# =======================

# Main Program
if __name__ == "__main__":
    # Launch main menu
    main_menu()
