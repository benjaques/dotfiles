#
# ~/.bashrc
#

export LANG=en_US.UTF-8
export LC_MESSAGES="C"

PATH=$HOME/bin:$PATH

#TERM=xterm-256color

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls -GlAh'
alias py='python3'
