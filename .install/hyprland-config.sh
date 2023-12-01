current_directory=$(pwd)

_installSymLink alacritty ~/.config/alacritty $current_directory/.config/alacritty/ ~/.config
_installSymLink rofi ~/.config/rofi $current_directory/.config/rofi/ ~/.config
_installSymLink dunst ~/.config/dunst $current_directory/.config/dunst/ ~/.config
_installSymLink hypr ~/.config/hypr $current_directory/.config/hypr/ ~/.config
_installSymLink waybar ~/.config/waybar $current_directory/.config/waybar/ ~/.config
_installSymLink swaylock ~/.config/swaylock $current_directory/.config/swaylock/ ~/.config
_installSymLink wlogout ~/.config/wlogout $current_directory/.config/wlogout/ ~/.config
_installSymLink swappy ~/.config/swappy $current_directory/.config/swappy/ ~/.config
_installSymLink .gtkrc-2.0 ~/.gtkrc-2.0 $current_directory/.config/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
_installSymLink .Xresources ~/.Xresources $current_directory/.config/gtk/.Xresources ~/.Xresources
_installSymLink gtk-3.0 ~/.config/gtk-3.0 $current_directory/.config/gtk/gtk-3.0/ ~/.config/
_installSymLink gtk-4.0 ~/.config/gtk-4.0 $current_directory/.config/gtk/gtk-4.0/ ~/.config/ 
_installSymLink gtk ~/.config/gtk $current_directory/.config/gtk/ ~/.config/ 
_installSymLink wal ~/.config/wal $current_directory/.config/wal/ ~/.config/ 

echo "Symbolic links created."
echo ""
