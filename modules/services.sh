#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

RESOURCE_PATH=~/motd/modules/

echo "${green}Services:${yellow}"
STATE=$(sudo systemctl status | grep -m1 "State: ")
case $STATE in
        "    State: running") echo -e "    Services: running" ;;
        "    State: degraded") echo -e "    Services: ${red}degraded"
                             systemctl --failed | grep "failed" | "$RESOURCE_PATH"/indent.sh ;;
        * ) echo "    Services: ${red}Unknown" ;;
esac
