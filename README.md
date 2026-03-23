# dotfiles

## linux-personal

1. Set up dotfiles repo:
    1. `sudo apt install git`
    1. `cd "$HOME"`
    1. `git clone https://github.com/Cananito/dotfiles.git "$HOME"/dotfiles`
1. `sh $HOME/dotfiles/setup-scripts/linux-personal/all.sh`

## mac-personal (non-existent at the moment)

1. Download and install Xcode or "Command Line Tools for Xcode".
1. Set up dotfiles repo:
    1. `cd "$HOME"`
    1. `git clone https://github.com/Cananito/dotfiles.git "$HOME"/dotfiles`
1. `sh $HOME/dotfiles/setup-scripts/mac-personal/all.sh`
1. Set up iTerm2 config.
    1. Go to Settings > General > Settings > Import All Settings and Data...
    1. Choose `~/dotfiles/iTerm2-mac/iTerm2 State.itermexport`.
    1. Go to Profiles > Other Actions... > Import JSON Profiles...
    1. Choose `~/dotfiles/iTerm2-mac/Cananito.json`. Set it as the default.
1. Set up Terminall.app config.
    1. Go to Settings > Profiles > ... dropdown > Import...
    1. Choose `~/dotfiles/Terminal-mac/Basic Monaco.terminal`. Set it as the default.
    1. View > Show Tab Bar.
1. Set up screenshots location.
    1. Open Screenshot app > Options > Save to > Downloads.
