CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/nginx-1.27.3.tar.gz ]; then
  curl https://nginx.org/download/nginx-1.27.3.tar.gz -OL
fi
tar -xzf nginx-1.27.3.tar.gz
cd "$HOME"/dotfiles/tars/nginx-1.27.3
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/nginx-1.27.3
cd "$CURR_LOCATION"
