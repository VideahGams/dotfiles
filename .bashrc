#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias scrot='scrot -q 100 -d 3'

PATH=$PATH:~/scripts


function _update_ps1() { export PS1="$(~/dotfiles/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export EDITOR="subl"

export THEOS=/opt/theos
export THEOS_DEVICE_IP=192.168.0.11 THEOS_DEVICE_PORT=22