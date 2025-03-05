#!/usr/bin/env bash

# Create symbolic links to ~/ for all packages.
#
# Simple install script for running `stow` on each directory (i.e. package)
# in the current directory. Per convention, all configuration files should
# be contained in their own appropriately named directory. This script will
# ignore running `stow` on any non-directory entities.
#
# Given the following package structure, `stow` will create a symbolic link
# in the user's home direcoty (e.g. `~/`):
#
#       ./nvim/.config/nvim   ->   ~/.config/nvim
#
# Additionally, this script will create a symbolic link between `./zshenv`
# and the system `/etc/zshenv` to ensure that `$ZDOTDIR` has been correctly
# set and is available for configuration files in the `$ZDOTDIR`. This is
# because `/etc/zshenv` is a system-wide configuration file and runs before
# the user-specific `.zshenv`.

for pkg in */; do
    if [ -d $pkg ]; then
        echo "Stowing package $pkg"
        stow $pkg
    fi
done

echo "Finished stowing all packages!"

# The `zsh` configuration expects plugins to be installed in a dedicated
# directory from which `.zshrc` will source them. If this directory does
# not exist it needs to be created as it is referenced in other parts.
if [ ! -d ${HOME}/.zsh_plugins ]; then
    mkdir ${HOME}/.zsh_plugins
fi

# If there is currently no system `/etc/zshenv` then a symlink will be made
# using this directory's `zshenv`. Otherwise, if there IS a system `zshenv`
# then it's best to manually investigate and update it as permissions will
# likely need to be modified to do so.
if [ ! -f /etc/zshenv ]; then
    sudo ln -sf $(pwd)/zshenv /etc/zshenv
else
    echo "\n/etc/zshenv already exists ; check for ZDOTDIR"
fi
