CURR_LOCATION="$PWD"
cd "$HOME"/repos
# TODO: Automate authentication.
git clone https://github.com/Cananito/notebooks.git
git clone https://github.com/Cananito/Cananito.github.io.git --recurse-submodules
git clone https://github.com/Cananito/c_dev.git
git clone https://github.com/Cananito/barbellcalc.git
cd "$CURR_LOCATION"
