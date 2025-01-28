# muhdots

> _Broken systems lead to disorganization, confusion, and chaos whereas smooth systems allow us to move quickly and efficiently._
>
> \- John Willard Marriot Sr.

## Requirements

It is recommended to install the following and ensure everything is in working order _prior_ to installing the dotfiles. I avoid using `brew` and instead opt for installing manually or from souce as necessary.

- `rust`
- `uv` and `ruff`
- `nvim`
- `lazygit`

## Install

Running `link.sh` as a first step will ensure that `$ZDOTDIR` has been set and will be taken into account when installing all subsequent tools.

    git clone git@github.com:jgoodlet/dotfiles.git ~/.dotfiles
    chmod +x link.sh && ./link.sh

### Alacritty

Use the standalone installer for Alacritty available [here](https://alacritty.org/).

### Starship

Run the following to install [Starship](https://starship.rs/):

    curl -sS https://starship.rs/install.sh | sh

### bat

To install `bat`, grab the latest binary from its releases page: [Releases](https://github.com/sharkdp/bat/releases)
### btop

See these instructions to install `btop`: [Installtion details](https://github.com/aristocratos/btop?tab=readme-ov-file#installation)

### zsh plugins

The following `zsh` plugins are all installed in `~/.zsh_plugins`.

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh_plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh_plugins
    git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh_plugins

For `fzf` clone the repository and run the install script.
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.zsh_plugins
    ~/.zsh_plugins/install
