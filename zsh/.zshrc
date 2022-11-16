#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

# source
plug "$HOME/.config/zsh/prompt.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/fzf"
plug "zsh-users/zsh-syntax-highlighting"

# autoenv was causing massive lag times and other issues. I looked for an
# alternative and `direnv` seemed to be it. Instead of an `.env` file it
# requires an `.envrc` file. See https://direnv.net/ for more.
eval "$(direnv hook zsh)"
