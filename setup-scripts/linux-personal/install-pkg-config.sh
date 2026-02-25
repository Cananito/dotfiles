# Required by tmux.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/pkg-config-0.29.2.tar.gz ]; then
  curl https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.2.tar.gz -OL
fi
tar -xzf pkg-config-0.29.2.tar.gz
cd "$HOME"/dotfiles/tars/pkg-config-0.29.2
CFLAGS="-Wno-int-conversion" ./configure --disable-debug --disable-host-tool --with-internal-glib
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/pkg-config-0.29.2
cd "$CURR_LOCATION"
