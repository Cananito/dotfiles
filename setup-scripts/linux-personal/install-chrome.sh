CURR_LOCATION="$PWD"
# https://www.google.com/chrome/?platform=linux
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -OL
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
cd "$CURR_LOCATION"
