# Derper's Dotfiles

This setup was heavily inspired by [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public).

## Contents

- terminal
- fish config
- NeoVim config [WIP]
- tmux config [WIP]
- git config [WIP]

## terminal
I am still using the out-of-the-box terminal on mac osx. The `terminal` folder has some themes I like to cycle through.

## fish config
- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Use version 5: `fisher install ilancosman/tide@v5`
- [z for fish](https://github.com/jethrokuan/z) - Fuzzy match dir search `fisher install jethrokuan/z`
- [Exa](https://the.exa.website/) - pretty print `ls`; `brew install exa`
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)

### Setup: Nerd Fonts
1. `brew tap homebrew/cask-fonts`
2. brew install --cask <font_name>

## NeoVim config
This is a work in progress. I am still transitioning off of my vimrc commands to lua. Hence, the temporary `init.vim` and `temp.lua` files. *`temp.lua` will become `init.lua`*.

- [ ] Finished?

## tmux config
For the future...

## git config
I use a list of bash commands, primarily from a former colleague. Check out their repo [glassresistor/git_bin](https://github.com/glassresistor/git_bin).
