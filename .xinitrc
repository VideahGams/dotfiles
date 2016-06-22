nvidia-settings --load-config-only &

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

sh ~/.fehbg &

xsetroot -cursor_name left_ptr

udevil &

compton &

redshift &

dunst &

nm-applet &

pasystray &

setxkbmap gb

./.screenlayout/layout.sh

###### i3 ######

exec i3

###### bspwm ######

#panel &

#sxhkd &
#exec bspwm
