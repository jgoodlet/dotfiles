#!/usr/bin/env bash

# Remove symbolic links in `~/` for all packages.
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
# This script will not remove the symbolic link that was created in /etc/zshenv
# during linking as it will be needed ragardless for proper `zsh` configuration.

for pkg in */; do
    if [ -d $pkg ]; then
        echo "Un-stowing package $pkg"
        stow -D $pkg
    fi
done

echo "Finished un-stowing all packages!"
