#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

echo "${yellow}Do you want to"
echo "1) Install MOTD for Local user only (recommended)"
echo "2) Install MOTD system wide (requires sudo)"
echo "Q) Cancel"
echo -e -n "\n>${no_color}"
read choise

MOTD_PATH=""

if [ "$choise" == "1" ]; then
    echo "${yellow}Installing motd.sh script for local user${no_color}"

    MOTD_PATH=~/motd

    # Copy scripts to HOME
    cp -r ../motd ~/

    # Setup motd.sh to run at login
    echo "export MOTD_PATH=${MOTD_PATH}" >> ~/.bashrc
    echo "${MOTD_PATH}/motd.sh" >> ~/.bashrc

    echo "${yellow}You can configure the script by editing ${MOTD_PATH}/motd.sh${no_color}"


elif [ "$choise" == "2" ]; then
    echo "${yellow}Installing motd.sh script system wide (needs sudo)${no_color}"

    MOTD_PATH=/etc/motd-script

    # Setup motd.sh to run at login
    echo "export MOTD_PATH=${MOTD_PATH}" >> /etc/profile
    echo "$MOTD_PATH/motd.sh" >> /etc/profile
    if [ "$?" == "0" ]; then
        # Copy scripts to /etc/motd-script
        cp -r ../motd "${MOTD_PATH}/"

        echo "${yellow}You can configure the script by editing ${MOTD_PATH}/motd.sh${no_color}"
    else
        echo "${red}Please run the script with sudo${no_color}"
        exit
    fi
else
    echo "Cancelled"
    exit
fi

echo "${green}Done${no_color}"


export MOTD_PATH=${MOTD_PATH}
