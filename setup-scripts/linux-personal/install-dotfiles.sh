CURR_LOCATION="$PWD"
cd "$HOME"/dotfiles
stow common
stow linux-personal
sudo stow -t /etc/ xorg
cd "$CURR_LOCATION"

mkdir ~/mutt_cache
mkdir ~/mutt_cache/headers
mkdir ~/mutt_cache/bodies
mkdir ~/mutt_cache/certificates
