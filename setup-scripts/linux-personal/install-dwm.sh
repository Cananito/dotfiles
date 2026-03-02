CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/dwm-6.8.tar.gz ]; then
  curl https://dl.suckless.org/dwm/dwm-6.8.tar.gz -OL
fi
tar -xzf dwm-6.8.tar.gz
cd "$HOME"/dotfiles/tars/dwm-6.8
sudo make install
rm -rf "$HOME"/dotfiles/tars/dwm-6.8
cd "$CURR_LOCATION"
