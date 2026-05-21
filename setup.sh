#!/bin/bash

# Copy scripts to HOME
cp -r ../motd ~/

# Setup motd.sh to run at login
echo "~/motd/motd.sh" >> ~/.bashrc

echo "done"
