datets=$(date '+%Y%m%d%H%M%S')
echo -e "${GREEN}"
cat <<"EOF"
____             _                
| __ )  __ _  ___| | ___   _ _ __  
|  _ \ / _` |/ __| |/ / | | | '_ \ 
| |_) | (_| | (__|   <| |_| | |_) |
|____/ \__,_|\___|_|\_\\__,_| .__/ 
                            |_|    

EOF
echo -e "${NONE}"
if [ -d ~/.config ]; then
    echo "The script has detected an existing .config folder and will try to create a backup into the folder:"
    echo "for example: ~/.config/vim-$datets.bak"
else 
    mkdir ~/.config
fi
if gum confirm "Do you want to create some .config links?" ;then
    _installSymLink vim ~/.config/vim ${pwd}/.config/vim/ ~/.config
    _installSymLink nvim ~/.config/nvim ${pwd}/.config/nvim/ ~/.config
    _installSymLink scripts ~/.config/scripts ${pwd}/.config/scripts/ ~/.config
fi
if [ -f ~/.bashrc ]; then
    echo "The script has detected an existing .bashrc file and will try to create a backup to:" 
    echo "for example: ~/.bashrc-$datets.bak"
    if gum confirm "Do you want to create a .bashrc backup?" ;then
        _installSymLink .bashrc ~/.bashrc ${pwd}/.bashrc ~/.bashrc
    fi
fi
