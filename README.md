# muhdots

> _Broken systems lead to disorganization, confusion, and chaos whereas smooth systems allow us to move quickly and efficiently._
>
> \- John Willard Marriot Sr.

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

### Rust

To download Rustup and install Rust, run the following in your terminal, then follow the on-screen instructions.

    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    
### `uv` and `ruff`

    curl -LsSf https://astral.sh/uv/install.sh | sh
    curl -LsSf https://astral.sh/ruff/install.sh | sh
    
### neovim

The best way to install Neovim is from source. The following will clone the repository and ensure the build is stable. If is fine to clone into `~/`.

    git clone https://github.com/neovim/neovim
    cd neovim
    git checkout stable

Then run the following:

    rm -r build/  # clear the CMake cache
    make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
    make install
    export PATH="$HOME/neovim/bin:$PATH"


    
