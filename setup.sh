#!/bin/bash

echo "Do you want to"
echo "1) Install MOTD for Local user only (recommended)"
echo "2) Install MOTD system wide (requires sudo)"
echo "Q) Cancel"
echo -e -n "\n>"
read choise

if [ "$choise" == "1" ]; then

    echo "Installing motd.sh script for local user"

    # Copy scripts to HOME
    cp -r ../motd ~/

    # Setup motd.sh to run at login
    echo "~/motd/motd.sh" >> ~/.bashrc
    echo "You can configure the script by editing ~/motd/motd.sh"

elif [ "$choise" == "2" ]; then
    echo "Installing motd.sh script system wide (needs sudo)"

    # Setup motd.sh to run at login
    echo "/etc/motd-script/motd.sh" >> /etc/profile
    if [ "$?" == "0" ]; then
        # Copy scripts to /etc/motd-script
        cp -r ../motd /etc/motd-script/
        echo "You can configure the script by editing /etc/motd-script/motd.sh"
    else
        echo "Please run the script with sudo"
    fi
else
    echo "Cancelling"
    exit
fi

