#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

#MOTD_PATH=~/motd

echo "${green}System Version:${yellow}"
echo -n "    "
lsb_release -d | sed -e 's/^[ \t]*//' | cut -c 14-
uname -r | "$MOTD_PATH"/modules/indent.sh
