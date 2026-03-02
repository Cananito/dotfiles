xrandr --output eDP --mode 1280x800
xset r rate 200 30
setxkbmap -option caps:escape
sh ~/.dwm-status-bar.sh &
exec dwm
