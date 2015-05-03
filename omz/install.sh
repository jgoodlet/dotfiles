#!/usr/bin/env bash
#
# oh-my-zsh
#
# This installs Robby Russell's fantastical oh-my-zsh. There may or may
# not be any further configuration that happens in this script.

# Check for oh-my-zsh
if [ ! -d "$ZSH" ]; then
  echo "  Installing oh-my-zsh for you."
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  chsh -s /bin/zsh
fi