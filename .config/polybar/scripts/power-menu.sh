DIR="$HOME/.config/polybar/menu"
rofi_command="rofi -theme $DIR/power-menu.rasi"

# Options
shutdown="Shutdown"
reboot="Restart"
lock="Lock"
suspend="Sleep"
logout="Logout"

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $DIR/confirm.rasi
}

# Message

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command  -dmenu -p "")"
case $chosen in
    $shutdown)
	systemctl poweroff
        ;;
    $reboot)
	systemctl reboot
        ;;
    $lock)
	betterlockscreen -l
        ;;
    $suspend)
	mpc -q pause
	amixer set Master mute
	systemctl suspend
        ;;
    $logout)
	pkill -u $USER
esac
