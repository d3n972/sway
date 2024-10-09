#!/bin/bash

if pgrep gammastep > /dev/null; then
    killall gammastep
else
    gammastep -mwayland -PO 1500 &
    echo $(pidof gammastep) > /tmp/gammastep.pid
fi