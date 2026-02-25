CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/tmux-3.6a.tar.gz ]; then
  curl https://github.com/tmux/tmux/releases/download/3.6a/tmux-3.6a.tar.gz -OL
fi
tar -xzf tmux-3.6a.tar.gz
cd "$HOME"/dotfiles/tars/tmux-3.6a
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/tmux-3.6a
cd "$CURR_LOCATION"
