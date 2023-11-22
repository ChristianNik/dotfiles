#!/bin/bash

# set the icon and a temporary location for the screenshot to be stored
# icon="$HOME/Downloads/lock-solid.svg"
tmpImagePath='/tmp/screen.png'

# take a screenshot
rm -f "$tmpImagePath"
scrot "$tmpImagePath"

# blur the screenshot by resizing and scaling back up
convert "$tmpImagePath" -filter Gaussian -thumbnail 20% -sample 500% "$tmpImagePath"

# overlay the icon onto the screenshot
# convert "$tmpImagePath" "$icon" -gravity center -composite "$tmpImagePath"

# lock the screen with the blurred screenshot
i3lock -i "$tmpImagePath"
