#!/bin/zsh

for script in $(ls ~/.config/sway/startup-scripts | sort -g); do
    echo "Running $script"
    bash ~/.config/sway/scripts/$script
done