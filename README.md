# muhdots

> _Broken systems lead to disorganization, confusion, and chaos whereas smooth systems allow us to move quickly and efficiently._
>
> \- John Willard Marriot Sr.

## Requirements

It is recommended to install the following and ensure everything is in working order _prior_ to installing the dotfiles. I avoid using `brew` and instead opt for installing manually or from souce as necessary.

- `rust`
- `uv` and `ruff`
- Alacritty
- `bat`
- `btop`
- `nvim`
- `lazygit`

See [zsh](#zsh) for installation details about plugins.

## Install

Running `install.sh` as a first step will ensure that `$ZDOTDIR` has been set and will be taken into account when installing all subsequent tools.

    git clone git@github.com:jgoodlet/dotfiles.git ~/.dotfiles
    chmod +x install.sh && ./install.sh

## zsh
