nvidia-settings --load-config-only &

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

sh ~/.fehbg &

xsetroot -cursor_name left_ptr

compton &

redshift &

setxkbmap gb

###### i3 ######

exec i3

###### bspwm ######

#panel &

#sxhkd &
#exec bspwm
