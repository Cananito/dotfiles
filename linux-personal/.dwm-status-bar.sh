get_brightness_status() {
  echo ""$(brightnessctl get)"/"$(brightnessctl max)""
}

get_battery_status() {
  # TODO: This doesn't work. BAT0 isn't always the right value.
  echo ""$(cat /sys/class/power_supply/BAT0/capacity)"%"
}

get_date_time() {
  echo "<date> <time>"
}

get_full_status() {
  echo "Vol: 0% | Brght: "$(get_brightness_status)" | Bat: "$(get_battery_status)" | "$(get_date_time)""
}

update_dwm_status_bar() {
  xsetroot -name "$(get_full_status)"
}

run_dwm_status_bar_updater() {
  while true
  do
    update_dwm_status_bar
    sleep 1m
  done
}
