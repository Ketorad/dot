#!/bin/bash

if [[ $1 == "reverse" ]]; then
#	i3-msg focus right
#	i3-msg focus down
#	i3-msg focus left
#	i3-msg move right
#	i3-msg focus up
#	i3-msg move left
#	i3-msg focus right
#	i3-msg focus up
#	i3-msg focus left
#	i3-msg resize grow width 30 px or 30 ppt
notify-send "herro"
else
	i3-msg move right
	i3-msg focus down
	i3-msg move left
	i3-msg resize grow width 30 px or 30 ppt
fi
