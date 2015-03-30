export LANG=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export MM_CHARSET=UTF-8
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/artwiz-fonts
xset fp rehash
xsetroot -cursor_name left_ptr
setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll us,ru
xrdb ~/.Xresources &
feh --bg-fill ~/.i3/resources/images/bg.jpg &
xcompmgr -n &
udiskie -2 &
xfce4-notifyd &
exec dbus-launch --exit-with-session --sh-syntax i3 &
thunar --daemon
