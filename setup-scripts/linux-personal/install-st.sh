CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/st-0.9.3.tar.gz ]; then
  curl https://dl.suckless.org/st/st-0.9.3.tar.gz -OL
fi
tar -xzf st-0.9.3.tar.gz
cd "$HOME"/dotfiles/tars/st-0.9.3
sudo make install
rm -rf "$HOME"/dotfiles/tars/st-0.9.3
cd "$CURR_LOCATION"
