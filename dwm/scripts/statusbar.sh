#!/bin/bash

access_points_status_filepath="/home/eivind/vid/access_points_status"

while [ $(pgrep -c -x dwm) ]; do 
    [ -f $access_points_status_filepath ] && readarray access_points_status < /home/eivind/vid/access_points_status
    for (( i=0; i < ${#access_points_status[@]}; i++ )); do
        access_point_variable="ac${i}"

        if [ ${access_points_status[$i]} = "0" ]; then
            typeset -g "$access_point_variable=^c#00FF00^up^d^"
        elif [ ${access_points_status[$i]} = "100" ]; then
            typeset -g "$access_point_variable=^c#FF0000^down^d^"
        else
            typeset -g "$access_point_variable=-"
        fi
    done
    xsetroot -name "\
Upstairs $ac0 | Downstairs $ac1\
 | $(/bin/date '+%a %y:%m:%d:%H:%M:%S')"
    sleep 5
done
