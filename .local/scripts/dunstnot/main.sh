#!/usr/bin/bash
battery=$(source ~/.config/dunst/scripts/battery.sh)
battery="Battery: $battery"

network=$(source ~/.config/dunst/scripts/network.sh)
network="Network: $network"

timeDate=$(source ~/.config/dunst/scripts/timeDate.sh)

volume=$(source ~/.config/dunst/scripts/volume.sh)
volume=("Volume: $volume")

notify-send -u  "Low" "Status" "$(echo -e "$battery\n$network\n$timeDate\n$volume")"
