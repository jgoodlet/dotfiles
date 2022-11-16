#!/bin/sh

HISTSIZE=1000000
SAVEHIST=1000000

export PATH="$HOME/.local/bin":$PATH
export PATH="/home/jgoodlett/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"