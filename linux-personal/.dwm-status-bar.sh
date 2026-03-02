get_battery_status() {
  cat /sys/class/power_supply/BAT0/capacity
}

while true
do
  xsetroot -name "Battery: "$(get_battery_status)"%"
  sleep 1m
done
