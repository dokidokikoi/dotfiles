# set default shell
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

# set pure theme
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher install rafaelrinaldi/pure
