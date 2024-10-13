#!/bin/bash

# This script configures display settings for Sway window manager based on the connected monitor model.
# It checks if a specific monitor model (VS228) is connected.
# If the monitor is connected, it sets the resolution and position for eDP-1, DP-1, and HDMI-A-1 outputs.
# If the monitor is not connected, it disables DP-1 and eDP-1, then re-enables eDP-1 and sets the position for HDMI-A-1 and eDP-1 outputs.

isHome=$(swaymsg --raw -t get_outputs | jq ".[] | .model" | grep "VS228")
if [ ! -z "$isHome" ]; then
    swaymsg output "eDP-1" resolution 1920x1080 pos 3840 0
    swaymsg output "DP-1" resolution 1920x1080 pos 0 0
    swaymsg output "HDMI-A-1" resolution 1920x1080 pos 1920 0
else
    swaymsg output "DP-1" disable
    swaymsg output "eDP-1" disable
    swaymsg output "eDP-1" enable
    swaymsg output "HDMI-A-1" pos 1920 0
    swaymsg output "eDP-1" pos 0 0
fi
