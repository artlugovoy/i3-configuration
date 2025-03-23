export LANG=en_US.UTF-8
export MM_CHARSET=UTF-8
xsetroot -cursor_name left_ptr
setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll us,ru
xbindkeys &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
feh --bg-scale '/home/arthur/.config/i3/resources/images/bg_3.png' &
compton --config ~/.config/i3/resources/.compton.conf &
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh &
udiskie -2 &
dunst &
exec imwheel -b 45 &
(sleep 5; conky -c ~/.config/i3/conky/desktop.conf -q) &
pasystray &
nm-applet &
openvpn3-indicator &
exec dbus-launch --exit-with-session --sh-syntax i3 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
export SSH_AUTH_SOCK
exec i3
