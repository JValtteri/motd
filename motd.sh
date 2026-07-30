
#!/bin/bash
no_color=$(echo -e "\033[0m")
yellow=$(echo -e "\033[1;33m")
green=$(echo -e "\033[1;32m")
red=$(echo -e "\033[1;31m")
cyan=$(echo -e "\033[1;36m")

## This is the modular version of motd.sh

## Add this line to the end of .bashrc file:
## ~/motd/motd.sh

#MOTD_PATH=~/motd

### Banners
## Some static banners are included
## Automatic distribution based banner requires installing "linuxlogo"
## Custom ASCII art banner text requires installing "figlet"
##
#"$MOTD_PATH"/modules/banners/debian.sh
#linuxlogo -l
#echo -n "${yellow}" && figlet "insert custom computer banner text"

## System
"$MOTD_PATH"/modules/system_version.sh

## Services (requires root)
#"$MOTD_PATH"/modules/services.sh

## Network
"$MOTD_PATH"/modules/network_addr.sh
#"$MOTD_PATH"/modules/network_ifconf.sh

## Containers (requires docker and docker permissions)
#"$MOTD_PATH"/modules/containers.sh

## Disk
## (The script accepts a parameter pointing to the disc you are interested in.
## (Remove it to show all volumes)
"$MOTD_PATH"/modules/disk.sh /

## Uptime and load
"$MOTD_PATH"/modules/uptime.sh

## Cleanup styling
echo "${no_color}"
