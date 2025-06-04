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

# Git shortcuts
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gs="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gd="git diff"
#alias gc="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias ga='git add'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'