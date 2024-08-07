# Synchronize packages
sudo pacman -Sy
echo ""

_setArchlinuxcn
# Check for required packages
echo ":: Checking that required packages for the installation are installed..."
_installPackagesPacman "rsync" "gum" "yay" "wget";
echo ""

# Double check rsync
if ! command -v rsync &> /dev/null; then
    echo ":: Force rsync installation"
    sudo pacman -S rsync --noconfirm
else
    echo ":: rsync double checked"
fi
echo ""
