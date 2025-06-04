
#!/usr/bin/env zsh

eval "$(starship init zsh)"

# -- HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# -- PLUGINS
source $HOME/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# -- MISC CONFIG
source $ZDOTDIR/fzf.zsh
source $ZDOTDIR/exports.zsh
source $ZDOTDIR/completion.zsh
source $ZDOTDIR/aliases.zsh

# -- RUST
#
# This initializes the `rustup` shell setup and provides access to all the 
# associated `rust` tools as found in `~/.cargo/bin`, namely `rustc`, `cargo`,
# and `rustup`.
[[ -e "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"

