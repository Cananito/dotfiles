# Set screen resolution.
xrandr --output eDP --mode 1280x800

# Set keyboard key repeat speed.
xset r rate 200 30

# Map caps lock to esc.
setxkbmap -option caps:escape

# Set the left Windows key as the Compose Key.
setxkbmap -option compose:lwin

# Start sxhkd.
sxhkd -c "$HOME"/.sxhkdconfig &

# Start dwm status bar updates.
exec slstatus &

# Start dwm.
exec dwm
