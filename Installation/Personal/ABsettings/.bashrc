#
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Git prompt
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
	. /usr/share/git/completion/git-prompt.sh
fi

# bash aliases

#if [ -f "$HOME/.bash_aliases" ]; then
#	. "$HOME/.bash_aliases"
#fi

# Kodi playercorefactory scripts
if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts" ] ; then
    PATH="$HOME/git/kodi-playercorefactory/bash-scripts:$PATH"
fi

# set PATH so it includes ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# ruby
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Shell prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto verbose git"

# Prompt
#PS1='[\u@\h \W]\$ '
#PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '
PS1='\[\e[1;32m\]\d \[\e[1;33m\]\u@\[\e[1;35m\]\h \W ->\e[1;36m\nYes Master ? \[\e[1;37m\] '

# Tell ls to be colourful 
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias ls='ls --color=auto'

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
numlockx on