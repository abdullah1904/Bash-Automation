#!/bin/bash

while [ 1 -eq 1 ]
do
    clear
    echo -e "Automations: \n"
    echo "1) User Automation"
    echo "2) File Automation"
    echo -e "3) Exit\n"
    read -p "Select Option: " option
    if [ $option -eq 1 ]
    then
        clear
        echo "User Automation"
        read -p "Press any key to continue: "
    elif [ $option -eq 2 ]
    then
        clear
        echo "File Automation"
        read -p "Press any key to continue: "
    elif [ $option -eq 3 ]
    then
        clear
        echo -e "\nThank You ;)\n"
        read -p "Press any key to continue: "
        clear
        break
    else
        clear
        echo "Invalid Option"
        read -p "Press any key to continue: "
    fi
done