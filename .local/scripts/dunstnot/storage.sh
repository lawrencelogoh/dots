printf "%s"  "$(df -h "$HOME" | awk ' /[0-9]/ {print $3 "/" $2}')"
