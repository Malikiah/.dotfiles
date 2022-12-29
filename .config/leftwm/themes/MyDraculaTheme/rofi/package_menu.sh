#!/usr/bin/env bash

THEME="$HOME/.config/leftwm/themes/current/rofi/powermenu.rasi"

rofi_command="rofi -no-config -theme $THEME"

# Options
update="Update"
# Variable passed to rofi
options="$update"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 0)"
case $chosen in
    $update)
        echo "hello"
        ;;
esac
