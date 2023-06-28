# Customize MacOS and Fedora terminals

This is my terminal setup using the [selenized color scheme](https://github.com/jan-warchol/selenized), [CaskaydiaCove Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode), a customized prompt using [starship](https://github.com/starship/starship), and a customized vim status bar using [vim-airline](https://github.com/vim-airline/vim-airline).

## Repository instructions

This repository has submodules, so it should be cloned as follows: 

```bash
git clone --recurse-submodules https://github.com/jp-ga/dotfiles.git
```

To sync another computer with the latest config files, pull repo and submodules from repo directory:

```bash
git pull --recurse-submodules
```

After any change in config files, push main repo and submodules from repo directory:

```bash
git push --recurse-submodules=on-demand
```

___

## Font

My favorite programming font right now is the `Cascadia Code` font. It has a Nerd Font version named `CaskaydiaCove Nerd Font Mono`.

1. Download de `.zip` file from the latest release at https://github.com/ryanoasis/nerd-fonts/

2. Copy the `.ttf` files into

    - MacOS: `~/Library/Fonts`
    - Fedora: `~/.local/share/fonts`

## Terminal color scheme

### MacOS (iTerm2)

1. Install brew

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. Install iTerm

    ```bash
    brew install --cask iterm2
    ```

3. Add the following to `.zshrc`

    ```bash
    export CLICOLOR=1
    export LSCOLORS=ExGxCxDxCxegedabagacad
    ```
    > Note: Fedora uses $LS_COLORS env variable instead, which uses a different formatting. For now, it is very similar.

4. Change color scheme and font:

    - Download color scheme at https://github.com/jan-warchol/selenized/blob/master/terminals/iterm/selenized-dark.itermcolors
    - Go to Preferences, Profiles, Colors, Color Presets, Import and select color scheme file
    - Create a new profile and set as defaul
    - Go to text and select `CaskaydiaCove Nerd Font Mono`

### Fedora (GNOME terminal)

1. Change color scheme and font manually. See color codes at https://github.com/jan-warchol/selenized/blob/master/terminals/gnome-terminal/colors/selenized-dark

## Terminal promt

1. Install Starship

    ```bash
    curl -sS https://starship.rs/install.sh | sh
    ```
    then,

    - MacOs (zsh): 

        Add the following line to `.zshrc`
        ```bash
        eval "$(starship init zsh)"
        ```
        
    - Fedora (bash):

        Add the following to the end of `.bashrc`
        ```bash
        eval "$(starship init bash)"
        ```

2. Symlink `starship.toml`:

    ```bash
    ln -s ~/Repositories/dotfiles/.config/starship.toml ~/.config/starship.toml
    ```

3. Add the following to `.condarc`:
    ```
    changeps1: false
    ```

## Vim

1. Symlink `.vim` directory and `.vimrc` file:

    ```bash
    ln -s ~/Repositories/dotfiles/.vim ~/.vim
    ln -s ~/Repositories/dotfiles/.vimrc ~/.vimrc
    ```

2. Open vim and run 

    ```
    :helptags ~/.vim/pack/dist/start/vim-airline/doc
    ```
