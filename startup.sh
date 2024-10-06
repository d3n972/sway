#!/bin/zsh

swaymsg output "DP-1" disable
swaymsg output "eDP-1" disable
swaymsg output "eDP-1" enable
swaymsg output eDP-1 pos 0 0
swaymsg input type:keyboard xkb_layout hu
if [[ ! $(pgrep -f 1password) ]]; then
    nohup 1password --silent > /dev/null &
fi

if [[ ! $(pgrep -f Discord) ]]; then
    Discord
fiQ