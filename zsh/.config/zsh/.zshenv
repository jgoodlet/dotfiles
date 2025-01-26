#!/usr/bin/env zsh

# Sets all environment variables that are needed for proper shell tooling
# and execution.
#
# The primary concern of this file is the setting of the $ZDOTDIR directory,
# which tells `zsh` where to look for its configuration files. There are a lot
# of unclear recommendations online as to which file (`.zshenv` or `.zprofile`)
# this env var should be set in.
#
# The official `zsh` documentation states the following in section 5.1:
#
# -- start --
#
# Commands are first read from /etc/zshenv; this cannot be overridden. Subsequent 
# behaviour is modified by the RCS and GLOBAL_RCS options; the former affects all 
# startup files, while the second only affects global startup files (those shown 
# here with an path starting with a /). If one of the options is unset at any point,
# any subsequent startup file(s) of the corresponding type will not be read. It is 
# also possible for a file in $ZDOTDIR to re-enable GLOBAL_RCS. Both RCS and GLOBAL_RCS 
# are set by default.
#
# Commands are then read from $ZDOTDIR/.zshenv. If the shell is a login shell, commands 
# are read from /etc/zprofile and then $ZDOTDIR/.zprofile. Then, if the shell is 
# interactive, commands are read from /etc/zshrc and then $ZDOTDIR/.zshrc. Finally, if 
# the shell is a login shell, /etc/zlogin and $ZDOTDIR/.zlogin are read.
#
# -- end --
#
# The issue here is that `etc/zshenv` does not exist on MacOS. That would be the ideal
# file in which to set `ZDOTDIR` as it would allow us to move `.zshenv` to the actual
# `$ZDOTDIR` directory. 
#
# As it stands, `.zshenv` must remain in $HOME in order for our `zsh` configuration to
# execute properly.
#
# TODO: explore scripting out setting `ZDOTDIR` in `/etc/zshenv` so that `zshenv` can
# live in `ZDOTDIR`, as it should. A small script that could be executed after running
# `stow .`.

# NOTE: This was moved to `etc/zshenv`
# export ZDOTDIR="$HOME/.config/zsh"

# -- Starship Config --
export STARSHIP_CONFIG=$ZSH/prompt/starship.toml

# -- XDG --
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# -- EDITOR --
export EDITOR=nvim
export VISUAL=nvim

# -- FZF --
FZF_COLORS="bg+:#414559,\
spinner:#f2d5cf,\
hl:#e78284,\
fg:#c6d0f5,\
header:#e78284,\
info:#ca9ee6,\
pointer:#f2d5cf,\
marker:#babbf1,\
fg+:#c6d0f5,\
prompt:#ca9ee6,\
hl+:#e78284"

export FZF_DEFAULT_OPTS="--border sharp \
--preview-border sharp \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒ \
--highlight-line \
--multi"

# -- NVM --
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && \
    printf %s "${HOME}/.nvm" || \
    printf %s "${XDG_CONFIG_HOME}/nvm")"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
. "$HOME/.cargo/env"
