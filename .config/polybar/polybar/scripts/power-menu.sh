DIR="$HOME/.config/polybar/menu"
rofi_command="rofi -theme $DIR/power-menu.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend=" Sleep"
logout=" Logout"

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $DIR/confirm.rasi
}

# Message
msg() {
	rofi -theme "$DIR/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command  -dmenu -p "")"
case $chosen in
    $shutdown)
	ans=$(confirm_exit &)
	systemctl poweroff
	exit 0
        ;;
    $reboot)
	ans=$(confirm_exit &)
	systemctl reboot
	exit 0
        ;;
    $lock)
	if [[ -f /usr/bin/i3lock ]]; then
		i3lock
	elif [[ -f /usr/bin/betterlockscreen ]]; then
		betterlockscreen -l
	fi
        ;;
    $suspend)
	ans=$(confirm_exit &)
	mpc -q pause
	amixer set Master mute
	systemctl suspend
	exit 0
        ;;
    $logout)
	pkill -u $USER
esac
