#!/usr/bin/bash
nmcli -f ACTIVE,SSID dev wifi list | awk '$1=="yes" { print $2 } '
