#!/bin/bash

# install packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install nerd font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
