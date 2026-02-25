# Required by Nginx.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/openssl-3.4.0.tar.gz ]; then
  curl https://github.com/openssl/openssl/releases/download/openssl-3.4.0/openssl-3.4.0.tar.gz -OL
fi
tar -xzf openssl-3.4.0.tar.gz
cd "$HOME"/dotfiles/tars/openssl-3.4.0
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/openssl-3.4.0
cd "$CURR_LOCATION"
