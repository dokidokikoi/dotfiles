
echo "SPACE = select/unselect a profile. RETURN = confirm. No selection = CANCEL"
profile=$(gum choose "Hyprland")
if [ -z $profile ] ;then
    echo "No profile selected. Installation canceled."
    exit
fi
