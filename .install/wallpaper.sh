# ------------------------------------------------------
# Install wallpapers
# ------------------------------------------------------

echo -e "${GREEN}"
cat <<"EOF"
__        __    _ _                                 
\ \      / /_ _| | |_ __   __ _ _ __   ___ _ __ ___ 
 \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__/ __|
  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |  \__ \
   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|  |___/
                   |_|         |_|                  

EOF
echo -e "${NONE}"
if [ ! -d ~/wallpaper ]; then
    mkdir ~/wallpaper
    echo "Create wallpaper floder."
fi
if [ -z "$(ls -A ~/wallpaper/default.jpg)" ]; then
    wget -O ~/wallpaper/default.jpg https://w.wallhaven.cc/full/jx/wallhaven-jxl7ow.jpg
fi

if [ ! -f ~/.cache/current_wallpaper.jpg ]; then
    cp ~/wallpapers/default.jpg ~/.cache/current_wallpaper.jpg
    echo "Default wallpaper installed."
    echo ""
fi
