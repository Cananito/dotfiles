CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/stow-2.3.1.tar.gz ]; then
  curl http://ftp.gnu.org/gnu/stow/stow-2.3.1.tar.gz -OL
fi
tar -xzf stow-2.3.1.tar.gz
cd "$HOME"/dotfiles/tars/stow-2.3.1
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/stow-2.3.1
cd "$CURR_LOCATION"
