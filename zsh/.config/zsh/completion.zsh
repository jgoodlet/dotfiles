#!/usr/bin/env zsh

fpath=($HOME/.zsh_plugins/zsh-completions/src $fpath)

# Loads and initializes the `zsh` completion system.
#
# `compinit`
# 
# To initialize the system, the function compinit should be in a directory mentioned
# in the fpath parameter, and should be autoloaded ('autoload -U compinit' is recommended), 
# and then run simply as 'compinit'. This will define a few utility functions, arrange 
# for all the necessary shell functions to be autoloaded, and will then re-define all 
# widgets that do completion to use the new system. If you use the menu-select widget, 
# which is part of the zsh/complist module, you should make sure that that module is 
# loaded before the call to compinit so that that widget is also re-defined.
#
# `autoload -Uz`
#
# A function can be marked as undefined using the autoload builtin (or ‘functions -u’ 
# or ‘typeset -fu’). Such a function has no body. When the function is first executed, 
# the shell searches for its definition using the elements of the fpath variable. Thus 
# to define functions for autoloading, a typical sequence is:
#
#     fpath=(~/myfuncs $fpath)
#     autoload myfunc1 myfunc2 ...
#
# The usual alias expansion during reading will be suppressed if the autoload builtin 
# or its equivalent is given the option -U. This is recommended for the use of functions 
# supplied with the zsh distribution. 

zmodload zsh/complist
autoload -Uz compinit 
compinit -C
