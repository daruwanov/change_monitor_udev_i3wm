#!/bin/sh

#export Display for output
export DISPLAY=:0.0

#some scripts for work
xrandr_command="/usr/bin/xrandr"
awk_command="/bin/awk"

#get max  resolution of connected devises

resolution_VGA=`${xrandr_command} | $awk_command '/VGA1 connected/ { getline; print  $1}'`

resolution_HDMI=`${xrandr_command} | $awk_command '/HDMI1 connected/ { getline; print  $1}'`

#if resolution exist we get true
if [ -n "$resolution_VGA" ]; then

#notify-send $resolution_VGA
xrandr --output VGA1 --above LVDS1 --mode $resolution_VGA

elif [ -n "$resolution_HDMI" ]; then

#notify-send $resolution_HDMI
xrandr --output HDMI1 --above LVDS1 --mode $resolution_HDMI

else

xrandr --auto

fi
#notify-send  resolution


