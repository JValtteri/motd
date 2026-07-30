#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

#MOTD_PATH=~/motd


if [ -z "$2" ]; then
    df -h $1 | "$MOTD_PATH"/modules/indent.sh | grep $1
else
    echo "${green}Disk:${yellow}"
    df -h $1 | "$MOTD_PATH"/modules/indent.sh
fi
