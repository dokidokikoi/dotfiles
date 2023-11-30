#!/bin/bash
source .install/color.sh

echo "${GREEN}"
cat <<"EOF"
     _       _    __ _ _           
  __| | ___ | |_ / _(_) | ___  ___ 
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/
                                   
EOF
echo "${NONE}"

echo "This script will guide you through the installation process of my dotfiles."

if [[ ! -d $(pwd)/.install ]]; then
    echo "Please run script under the dotfiles folder"
    exit 1
fi
if [ "$EUID" == 0 ]; then
    echo "don't use sudo or root run this script"
    exit 1
fi

sudo chmod +x $(pwd)/*
source .install/library.sh
source .install/required.sh
source .install/packages.sh
source .install/install-packages.sh
source .install/backup.sh
source .install/profile.sh
if [[ $profile == *"Hyprland"* ]]; then
    source .install/hyprland.sh
    source .install/install-packages.sh
    source .install/install-config.sh
fi
source .install/pywal.sh
source .install/wallpaper.sh
