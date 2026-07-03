CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/universal-ctags-6.2.1.tar.gz ]; then
  curl https://github.com/universal-ctags/ctags/releases/download/v6.2.1/universal-ctags-6.2.1.tar.gz -OL
fi
tar -xzf universal-ctags-6.2.1.tar.gz
cd "$HOME"/dotfiles/tars/universal-ctags-6.2.1
./autogen.sh
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/universal-ctags-6.2.1
cd "$CURR_LOCATION"
