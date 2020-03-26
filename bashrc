# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc_specific ]; then
    . ~/.bashrc_specific
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# prompts
PS1='\e[0;35m[\d \t]\e[m \e[0;32m\u@\h\e[m \e[0;33m\w\e[m \e[0;36m$(__git_ps1 "(%s)")\e[m\n$ '
PS2='more> '

export EDITOR='vi -e'
export VISUAL='vim'
export BROWSER='firefox'
export PAGER='less'
export LESS="$LESS -R -Q"

# only owner can read/write new files
umask 077
