#!/bin/sh

[ "$(stat -c %y ~/.cache/corona 2>/dev/null | cut -d' ' -f1 )" != "$(date '+%Y-%m-%d')" ] &&
	curl -s https://corona-stats.online/gh > ~/.cache/corona

grep "Ghana" ~/.cache/corona | 
	sed "s/\s*//g ; s/║//g ; s/│/;/g ;"  |
	sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g" | 
	awk -F';' '{print $3"("$4")" " D:"$5""  " R:"$7""}'
       
#	s/\[//g ; s/39m//g ;"
