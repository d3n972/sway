#!/bin/sh
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi
ln -s /home/markadonyi/.config/sway/nightlight.sh /usr/local/bin/nightlight