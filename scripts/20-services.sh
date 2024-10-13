#!/bin/bash

if [[ ! $(pgrep -f 1password) ]]; then
    nohup 1password --silent > /dev/null &
fi

if [[ ! $(pgrep -f Discord) ]]; then
    Discord
fi
