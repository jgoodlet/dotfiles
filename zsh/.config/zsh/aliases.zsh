#!/bin/sh

alias python='/usr/bin/python3'
alias pip='/usr/bin/pip3'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# copy/paste utilities
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'