#!/bin/zsh

for script in $(ls ~/.config/sway/scripts | sort -g); do
    echo "Running $script"
    bash ~/.config/sway/scripts/$script
done