#!/bin/bash

while true
do
   clear
   echo -e "  --: Automations :-- \n"
   echo "1) User Automation"
   echo "2) File Automation"
   echo "3) System Automation"
   echo -e "4) Exit\n"
   read -p "Select Option: " option
   if [ $option -eq 1 ]
   then
	clear
	echo "  --: User Automation :--"
	read -p "Enter Username: " username
	read -sp "Enter Password: " password
	sudo useradd -m -s /bin/bash $username
	echo "$username:$password" | sudo chpasswd
	read -p "Do you want to change user(Y/N): " option
	if [ $option = 'Y' ]
	then
		su $username
	fi
	read -p "Press any key to continue: "
   elif [ $option -eq 2 ]
   then
	clear
	echo -e "  --: File Automations :-- \n"
   	echo "1) Create Folder"
   	echo "2) Create File"
	echo "3) Remove Folder"
	echo "4) Remove File"
   	echo -e "5) Exit\n"
   	read -p "Select Option: " option
	clear
	if [ $option -eq 1 ]
	then
	   read -p "Enter Folder Name: " folderName
	   mkdir $folderName
	elif [ $option -eq 2 ]
	then
	   read -p "Enter File Name: " fileName
	   read -p "Enter File Extension: " extension
	   touch "$fileName$extension"
	elif [ $option -eq 3 ]
	then
	   read -p "Enter Folder Name: " folderName
	   rm -r "$folderName"
	   #rmdir $foldername
	elif [ $option -eq 4 ]
	then
	   read -p "Enter File Name: " fileName
	   read -p "Enter File Extension: " extension
	   rm "$fileName$extension"
	fi
	read -p "Press any key to continue: "
   elif [ $option -eq 3 ]
   then
	clear
	echo -e "  --: System Automations :-- \n"
   	echo "1) System Reboot"
   	echo "2) System Shutdown"
   	echo -e "3) Exit\n"
   	read -p "Select Option: " option
	clear
	if [ $option -eq 1 ]
	then
	   sudo reboot
	elif [ $option -eq 2 ]
	then 
	   sudo shutdown -h now
	fi
   elif [ $option -eq 4 ]
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