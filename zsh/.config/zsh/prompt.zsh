#!/bin/sh

# There were issues getting the prompt to initialize in the WSL. The solution
# was to do a manual install via cloning the repo and updating the path below.
# See: https://github.com/sindresorhus/pure#manually
fpath+=($HOME/.zsh/pure)

# Set up the prompt
autoload -U promptinit
promptinit
prompt pure