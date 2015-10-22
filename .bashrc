#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias scrot='scrot -q 100 -d 3'
alias snap='maim -s -c 1,0,0,0.6 -p 10'
alias hibernate='systemctl suspend'
alias love='love-hg'
alias yaourt='yaourt --noconfirm'

PATH=$PATH:~/scripts

function _update_ps1() { export PS1="$(~/dotfiles/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export EDITOR="subl"

export THEOS=/opt/theos
export THEOS_DEVICE_IP=192.168.0.7 THEOS_DEVICE_PORT=22

export GITHUB=/home/ruairidh/GitHub

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export AEMSTRO=$DEVKITPRO/aemstro
export PATH=$PATH:$DEVKITARM/bin

function cd() {
	builtin cd "${@}"
	if [ "$( ls | wc -l )" -gt 30 ] ; then
		ls --color=always | awk 'NR < 16 { print }; NR == 16 { print "\x1b[31m (... Too many files! \x1b[0m -snip- \x1b[31m ...) \x1b[0m" }; { buffer[NR % 14] = $0 } END { for( i = NR + 1; i <= NR+14; i++ ) print buffer[i % 14] }'
	else
		ls
	fi
}