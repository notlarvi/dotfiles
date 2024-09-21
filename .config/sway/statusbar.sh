#!/bin/sh
while true
do
    cpu_temp="$(awk '{x += $1} END{ printf "%.2f", x / NR / 1000}' /sys/class/thermal/thermal_zone*/temp)°C"
    date_and_time="$(date +'%a %Y-%m-%d %I:%M %p')"
    battery="$(cat /sys/class/power_supply/BAT0/capacity)%"
    printf "[ %s ] [ %s ] [ %s ]" "$battery" "$cpu_temp" "$date_and_time"
    sleep 15
done
