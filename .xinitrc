# Set the wallpaper
feh --bg-scale ~/Pictures/wall.jpg &

~/Desktop/dwm-bar/dwm_bar.sh &

# Disable trackpoint
xinput disable "PS/2 Generic Mouse" &

enable_touchpad & 	# Enable touch pad
#dunst &		dunst for notifications
xset r rate 300 50 &	# Speed xrate up
remaps & 
autostart &
unclutter &
clipmenud & 		# Start process for monitoring clipboard
# Start compositor
picom &
sxhkd &
xrandr --output DP-2 --primary --auto --right-of eDP-1 -s 1920x1080 &


# Startup programs
#mocp -F & Figure out how to work this
#mocp -t r,s,n &
emacs ~/Documents/lms/journal_2020.org &
firefox &
discord &

# Start dwm
exec dwm



# Start sowm

