#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

#MOTD_PATH=~/motd

echo "${green}Containers:${yellow}"
docker ps --format="table {{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Size}}\t{{.Names}}" | "$MOTD_PATH"/modules/indent.sh
