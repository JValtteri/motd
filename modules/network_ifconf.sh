#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

echo "${green}Network:${yellow}"
echo -n "    "
ifconfig | grep "inet 192." | sed -e 's/^[ \t]*//'
