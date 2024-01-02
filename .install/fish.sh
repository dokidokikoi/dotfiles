# set default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# set pure theme
### Download the installer to `/tmp`
curl git.io/pure-fish --output /tmp/pure_installer.fish --location --silent
### Source and trigger the installer
source /tmp/pure_installer.fish; and install_pure