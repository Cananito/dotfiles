CURR_LOCATION="$PWD"

mkdir -p "$HOME"/android/cmdline-tools/latest

# https://developer.android.com/studio#command-line-tools-only.
curl https://dl.google.com/android/repository/commandlinetools-linux-14742923_latest.zip -OL
# curl https://dl.google.com/android/repository/commandlinetools-mac-14742923_latest.zip -OL

unzip commandlinetools-linux-14742923_latest.zip

mv cmdline-tools/* "$HOME"/android/cmdline-tools/latest/

rm commandlinetools-linux-14742923_latest.zip
rm -rf cmdline-tools/

cd "$HOME"/android/cmdline-tools/latest/bin

# Run `./sdkmanager --list` to get a list of all packages.
./sdkmanager "platforms;android-34" "system-images;android-34;google_apis;arm64-v8a" "platform-tools" "build-tools;36.1.0" "ndk;29.0.14206865"

cd "$HOME"/android/

# Generate the debug key.
# Password: 123123
# Press `Enter` on all the prompts until it asks if things are correct, then type `yes`.
keytool -genkeypair -keystore debug.keystore -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10000

cd "$HOME"/android/cmdline-tools/latest/bin

# `emupixel9a` is the name I gave to the emulator.
# `50` is the ID of the device definition corresponding to "Pixel 9a" (see all definitions with `./avdmanager list`).
./avdmanager create avd -n emupixel9a -k "system-images;android-34;google_apis;arm64-v8a" -d 50

# Verify it got created by running `./avdmanager list avd`.

# Run the emulator: `cd "$ANDROID_HOME"/emulator/ && ./emulator -avd emupixel9a`.

cd "$CURR_LOCATION"
