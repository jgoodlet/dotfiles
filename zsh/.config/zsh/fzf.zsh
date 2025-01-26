#!/usr/bin/env zsh

# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/joshuagoodlett/.zsh_plugins/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/joshuagoodlett/.zsh_plugins/fzf/bin"
fi

source <(fzf --zsh)
