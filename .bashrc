#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias scrot='scrot -q 100 -d 3'
alias snap='maim -s -c 1,0,0,0.6'
alias hibernate='systemctl suspend'
# alias love='love-hg'
# alias yaourt='yaourt --noconfirm'
alias subl='subl3'
alias luarocks='sudo luarocks-5.1'
alias start-vpn='sudo systemctl start nordvpn.service'
alias stop-vpn='sudo systemctl stop nordvpn.service'

PATH=$PATH:~/PersonalScripts

function _update_ps1() { export PS1="$(~/dotfiles/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export EDITOR="subl3"

export THEOS=/opt/theos
export THEOS_DEVICE_IP=192.168.0.9 THEOS_DEVICE_PORT=22

export PEBBLE_PHONE=192.168.0.9

export GITHUB=/home/ruairidh/GitHub

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export AEMSTRO=$DEVKITPRO/aemstro
export PATH=$PATH:$DEVKITARM/bin
export PORTLIBS=$DEVKITPRO/portlibs/armv6k

function cd() {
	builtin cd "${@}"
	if [ "$( ls | wc -l )" -gt 30 ] ; then
		ls --color=always | awk 'NR < 16 { print }; NR == 16 { print "\x1b[31m (... Too many files! \x1b[0m -snip- \x1b[31m ...) \x1b[0m" }; { buffer[NR % 14] = $0 } END { for( i = NR + 1; i <= NR+14; i++ ) print buffer[i % 14] }'
	else
		ls
	fi
}

export PATH=$PATH:/opt/openresty/bin/:/opt/openresty/nginx/sbin/ #Automatically added by openresty packageexport PATH=$PATH:/opt/openresty/bin/:/opt/openresty/nginx/sbin/ #Automatically added by openresty package

export PATH=$(echo $PATH | sed -e 's;:\?/~/.scripts;;' -e 's;~/.scripts:\?;;')

eval $(thefuck --alias)export PATH=$PATH:/opt/openresty/bin/:/opt/openresty/nginx/sbin/ #Automatically added by openresty package

