export LANG=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export MM_CHARSET=UTF-8
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/artwiz-fonts
xset fp rehash
xsetroot -cursor_name left_ptr
setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll us,ru
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
feh --bg-scale '/home/arthur/.i3/resources/images/bg.jpg' --bg-scale '/home/arthur/.i3/resources/bg2.jpg' &
compton --config /home/arthur/.i3/resources/.compton.conf &
udiskie -2 &
#xfce4-notifyd &
/etc/off-gaming &
xautolock -time 5 -locker "i3lock-fancy" -detectsleep &
(sleep 10; conky -c ~/.i3/conky/desktop.conf -q) &
exec dbus-launch --exit-with-session --sh-syntax i3
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

