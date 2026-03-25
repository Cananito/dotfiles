# Installing from source so it has +clipboard support.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/vim-9.2.tar.bz2 ]; then
  curl https://www.vim.org/downloads/vim-9.2.tar.bz2 -OL
fi
tar -xzf vim-9.2.tar.bz2
cd "$HOME"/dotfiles/tars/vim92
./configure
make
sudo make install
make clean distclean
rm -rf "$HOME"/dotfiles/tars/vim92
cd "$CURR_LOCATION"
