#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

echo "dwa $DOTFILES"

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload --config=~/.config/polybar/config.ini main &
done

# polybar --reload --config=~/.config/polybar/config.ini main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched..."
