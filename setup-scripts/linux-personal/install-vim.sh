# Installing from source so it has +clipboard support.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
# if [ ! -f "$HOME"/dotfiles/tars/vim-9.2.tar.bz2 ]; then
  # curl https://www.vim.org/downloads/vim-9.2.tar.bz2 -OL
# fi
# tar -xjf vim-9.2.tar.bz2
# cd "$HOME"/dotfiles/tars/vim92
if [ ! -f "$HOME"/dotfiles/tars/vim-5c1b989b4aabf1549910752dcfb44030e64edfcc.tar.gz ]; then
  curl https://github.com/vim/vim/archive/5c1b989b4aabf1549910752dcfb44030e64edfcc.tar.gz -OL
fi
tar -xzf vim-5c1b989b4aabf1549910752dcfb44030e64edfcc.tar.gz
cd "$HOME"/dotfiles/tars/vim-5c1b989b4aabf1549910752dcfb44030e64edfcc
./configure --with-x --enable-gui=no
make
sudo make install
make clean distclean
rm -rf "$HOME"/dotfiles/tars/vim92
cd "$CURR_LOCATION"
