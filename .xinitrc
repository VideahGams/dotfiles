[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# sh ~/.fehbg &

xsetroot -cursor_name left_ptr

compton &

setxkbmap gb

###### i3 ######

exec i3

###### bspwm ######

#panel &

#sxhkd &
#exec bspwm
