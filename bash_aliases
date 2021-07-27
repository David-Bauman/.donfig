if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -lAGh1vXF --group-directories-first --color=auto'
    alias grep='grep --color=auto'
fi

alias valgrind='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes'
alias tmux='tmux -2 -f ~/.tmux/tmux.conf'
