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

export ZDOTDIR="$HOME/.config/zsh"
