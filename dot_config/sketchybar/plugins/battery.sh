#!/bin/sh

source "$HOME/.config/sketchybar/colors.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

COLOR=$GREEN

case ${PERCENTAGE} in
   100) ICON="" ;;
    9[0-9]) ICON="󰂂" ;;
    8[0-9]) ICON="󰂁" ;;
    7[0-9]) ICON="󰂀" ;;
    6[0-9]) ICON="󰁿" ;;
    5[0-9]) ICON="󰁾" ;;
    4[0-9]) ICON="󰁽" ;;
    3[0-9]) ICON="󰁼"; COLOR=$ORANGE;;
    2[0-9]) ICON="󰁻"; COLOR=$ORANGE ;;
    1[0-9]) ICON="󰁺"; COLOR=$RED ;;
    *) ICON=""; COLOR=$RED ;;
esac

if [[ "$CHARGING" != "" ]]; then
  ICON=󰂄
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --add item battery right \
           --set battery update_freq=120 icon="$ICON" icon.color="$COLOR" icon.font="$FONT:Bold:22.0" label.y_offset=-1 label="${PERCENTAGE}%" \
           --subscribe battery system_woke power_source_change
