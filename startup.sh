#!/bin/bash

swaymsg output "DP-1" disable
swaymsg output "eDP-1" disable
swaymsg output "eDP-1" enable
swaymsg output eDP-1 pos 0 0
swaymsg input type:keyboard xkb_layout hu