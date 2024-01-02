# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

source ~/.cache/wal/colors.fish

# -----------------------------------------------------
# ENVIRONMENT VARIABLES
# -----------------------------------------------------

set -x PATH ~/go/bin /usr/lib/ccache/bin/ $PATH

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c='clear'
alias nf='neofetch'
alias ls='eza -al'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias ts='~/.config/scripts/snapshot.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
# alias od='~/private/onedrive.sh'
alias rw='~/.config/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"

# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------

# Hyprland with Hyprland

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------

alias ascii='~/.config/scripts/figlet.sh'

# -----------------------------------------------------
# VIRTUAL MACHINE
# -----------------------------------------------------

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confb='nvim ~/.bashrc'

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

# alias notes='vim ~/notes.txt'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
# alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------

# Qtile
alias res1='xrandr --output DisplayPort-0 --mode 2880x1800 --rate 120'
alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

set -x https_proxy http://127.0.0.1:7890
set -x http_proxy http://127.0.0.1:7890
set -x all_proxy socks5://127.0.0.1:7890 
