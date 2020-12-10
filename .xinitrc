~/fixres & #for fixing resolution in a VM
feh --bg-scale ~/pictures/wall.jpg & # Set the wallpaper


xinput disable "PS/2 Generic Mouse" & # Disable trackpoint
enable_touchpad & 	# Enable touch pad
dunst &		        # dunst for notifications
xset r rate 300 50 &	# Speed xrate up
remaps & 
autostart &
unclutter &
clipmenud &             # Start clipboard manager
picom &                 # Start compositor
sxhkd &
xrandr --output DP-2 --primary --auto --right-of eDP-1 -s 1920x1080 &


# Startup programs
emacs &
syncthing -no-browser &

# Start dwm
exec dwm



# Start sowm

