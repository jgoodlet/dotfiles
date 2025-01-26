#!/usr/bin/env bash

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
#
# TODO: add an optional command line arg that will run `stow -D` to remove
# all symbolic links (e.g. un-stow).

for pkg in */; do
    if [ -d $pkg ]; then
        echo "Stowing package $pkg"
        stow $pkg
    fi
done

echo "Finished stowing all packages!"

# If there is currently no system `/etc/zshenv` then a symlink will be made
# using this directory's `zshenv`. Otherwise, if there IS a system `zshenv`
# then it's best to manually investigate and update it as permissions will
# likely need to be modified to do so.
if [ ! -f /etc/zshenv ]; then
    sudo ln -sf $(pwd)/zshenv /etc/zshenv
else
    echo "/etc/zshenv already exists"
    echo "Manually update to properly set ZDOTDIR"
fi
