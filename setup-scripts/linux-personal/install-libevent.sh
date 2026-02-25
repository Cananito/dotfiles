# Required by tmux.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/libevent-2.1.12-stable.tar.gz ]; then
  curl https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz -OL
fi
tar -xzf libevent-2.1.12-stable.tar.gz
cd "$HOME"/dotfiles/tars/libevent-2.1.12-stable
./configure --disable-openssl
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/libevent-2.1.12-stable
cd "$CURR_LOCATION"
