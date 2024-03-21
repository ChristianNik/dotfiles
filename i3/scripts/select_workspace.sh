#!/bin/bash

workspace_json=$(i3-msg -t get_workspaces)
workspace=$(i3-msg -t get_workspaces | grep -o '"name":"[^"]*' | grep -o '[^"]*$' | rofi -dmenu)

for arg in "$1"
do
    case $arg in
        "goto" )
           i3-msg -t command "workspace $workspace";;
        "move" )
           i3-msg -t command "move container to workspace $workspace";;
   esac
done
