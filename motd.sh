#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

## This is the modular version of motd.sh

## Add this line to the end of .bashrc file:
## ~/motd/motd.sh

RESOURCE_PATH=~/motd

## Banner
#"$RESOURCE_PATH"/modules/banners/debian.sh
#linuxlogo -l

## System
"$RESOURCE_PATH"/modules/system_version.sh

## Services (requires root)
#"$RESOURCE_PATH"/modules/services.sh

## Network
"$RESOURCE_PATH"/modules/network_addr.sh
#"$RESOURCE_PATH"/modules/network_ifconf.sh

## Containers (requires docker and docker permissions)
#"$RESOURCE_PATH"/modules/containers.sh

## Disk
"$RESOURCE_PATH"/modules/disk.sh

## Uptime and load
"$RESOURCE_PATH"/modules/uptime.sh

## Cleanup styling
echo "${no_color}"
