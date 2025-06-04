#!/usr/bin/env zsh

# -- PATH (GENERAL) -- 
export PATH="$HOME/neovim/bin:$PATH" 
export PATH="$HOME/.local/bin:$PATH"

# Rancher Desktop
export PATH="$HOME/.rd/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/joshuagoodlett/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Configure pe3 to write to temp
export APPDATA=/tmp

# The local mongo host used to seed data.
export MONGO_CLIENT_HOST=mongodb://host.docker.internal:27017/

# the NPM token used to download node dependencies
export NPM_TOKEN=6355a675-5f5e-4422-8be7-f7e57be3f615
