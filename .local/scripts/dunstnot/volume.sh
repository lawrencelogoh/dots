#!/usr/bin/bash
state=$(amixer -M sget Master | sed '6q;d' | cut -d " " -f 7 | tr -d '[]')
mute=$(cut -d " " -f 2 <<< $state)

val=$(cut -d " " -f 1 <<< $state)

if [[ "$mute" == "off" ]]
then
    val="$val[muted]"
fi

echo $val
