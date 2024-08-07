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

if [ "$EUID" == 0 ]; then
    echo "don't use sudo or root run this script"
    exit 1
fi

sudo chmod +x $(pwd)/*
source .install/library.sh
source .install/required.sh
source .install/packages.sh
source .install/install-packages.sh

source .install/pywal.sh
source .install/wallpaper.sh
source .install/fish.sh

echo -e "${GREEN}"
cat <<"EOF"
 _   _                  _                 _ 
| | | |_   _ _ __  _ __| | __ _ _ __   __| |
| |_| | | | | '_ \| '__| |/ _` | '_ \ / _` |
|  _  | |_| | |_) | |  | | (_| | | | | (_| |
|_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_|
       |___/|_|                             

EOF
echo "You are ready to go"
echo -e "${NONE}"