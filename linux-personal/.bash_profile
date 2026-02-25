source "$HOME"/.bash_profile_common

export PS1=" \[\e[1m\]\W\[\e[0m\]\[\e[31m\]\$(__git_ps1)\$(__citc_ps1)\[\e[0m\] 🔴 "

# Android dev set up.
export ANDROID_HOME=""$HOME"/android"
export KEYSTORE_PASSWORD="123123"

# Expands $PATH to find the Android dev binaries.
PATH=""$ANDROID_HOME"/tools":""$ANDROID_HOME"/tools/bin":""$ANDROID_HOME"/platform-tools":"$PATH"
