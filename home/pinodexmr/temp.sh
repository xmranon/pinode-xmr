#!/bin/sh
#CPU temp Status
CPU_RAW=$(sudo cat /sys/devices/virtual/thermal/thermal_zone0/temp)
{ date & echo "CPU temp is $((CPU_RAW/1000))'C" & echo "Updates every 60 seconds"; } > /var/www/html/temp.txt