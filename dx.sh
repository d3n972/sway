#!/usr/bin/bash
  # Maintained in linux-config.org
  s=$(swaymsg -t get_outputs | jq -r '.[] |  "\(.name)\n\(.active)"'  | zenity  --title "Select Display" --list  --text "" --column "Monitor" --column "Enabled")
  if [ ! -z "$s" ]; then
      e="$(zenity  --list  --title "Enable ${s}?" --text "" --radiolist  --column "Pick" --column "Enabled" TRUE enable FALSE disable)"
      if [ ! -z "$e" ]; then
          numActive=$(swaymsg -t get_outputs | jq  -r '[ .[] | select(.dpms and .active) ] | length')
          [ "$numActive" = "1" ] && [ $e = "disable" ] && sway-notify "Only one active monitor so no...." && exit 1
          swaymsg "output $s $e"
          (sleep 0.5 && sway-notify "$s:$e") &
      fi
  fi
  exit 0