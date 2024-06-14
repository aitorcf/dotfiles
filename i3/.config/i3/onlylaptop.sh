#!/bin/bash

LAPTOP=`xrandr | awk '{if ($2=="connected" && $1 ~ /eDP/) print $1}'`
MONITOR=`xrandr | awk '{if ($2=="connected" && $1 ~ /HDMI/) print $1}'`   

xrandr --output $LAPTOP --auto
xrandr --output $MONITOR --off
