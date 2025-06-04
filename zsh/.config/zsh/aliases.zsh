#!/usr/bin/env zsh


alias reload-zsh='source $ZDOTDIR/.zshrc'
alias edit-zsh='nvim $ZDOTDIR/.zshrc'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# `ls` type aliases
alias eza='eza -la --header --group-directories-first --time-style long-iso --icons=auto'
alias ll=eza

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias nv='nvim'
alias cat='bat'

