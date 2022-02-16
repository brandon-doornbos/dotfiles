#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colorful ls
alias ls='ls --color=auto'

# Bash prompt with git integration
. ~/Sync/Files/Tools/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[00m\]\[\e[1;35m\]\w\[\e[00m\]\[\e[2;37m\]$(__git_ps1 " (%s)")\n\[\e[00m\]\[\e[2;37m\]> \[\e[00m\]'
#PS1='[\u@\h \W]\$ '

# Enable bash_completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Start ssh-agent if it hasn't already
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Environment variables
export EDITOR=nvim
export TERMINAL=alacritty
export PATH=$PATH:/home/brandond/.local/bin
