# Required by Nginx.
CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles/tars
if [ ! -f "$HOME"/dotfiles/tars/pcre2-10.44.tar.gz ]; then
  curl https://github.com/PCRE2Project/pcre2/releases/download/pcre2-10.44/pcre2-10.44.tar.gz -OL
fi
tar -xzf pcre2-10.44.tar.gz
cd "$HOME"/dotfiles/tars/pcre2-10.44
./configure
make
sudo make install
rm -rf "$HOME"/dotfiles/tars/pcre2-10.44
cd "$CURR_LOCATION"
