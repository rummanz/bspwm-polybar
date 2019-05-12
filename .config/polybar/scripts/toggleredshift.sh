#!/bin/bash
result=$(ps -C redshift | grep -o redshift)
if [ "$result" == "redshift" ]
then
redshift -x && killall redshift && notify-send "Screen Temperature Reset." -t 2000 
else
redshift -r -l 41\:75 &
notify-send "Screen Warmth Auto-Adjusting." -t 2000
fi