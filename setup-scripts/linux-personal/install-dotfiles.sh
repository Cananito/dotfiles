CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles
stow common
stow linux-personal
sudo stow -t /etc/ xorg
cd "$CURR_LOCATION"
