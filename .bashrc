#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

. ~/Sync/Files/Tools/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[00m\]\[\e[1;35m\]\w\[\e[00m\]\[\e[2;37m\]$(__git_ps1 " (%s)")\n\[\e[00m\]\[\e[2;37m\]> \[\e[00m\]'
#PS1='[\u@\h \W]\$ '

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

export EDITOR=nvim
export TERMINAL=alacritty
export PATH=$PATH:/home/brandond/.local/bin
