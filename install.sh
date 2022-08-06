#!/bin/bash

# install packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install nerd font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
defaults write com.googlecode.iterm2 "Normal Font" -string "Hack Nerd Font"
defaults write com.googlecode.iterm2 "Non Ascii Font" -string "Hack Nerd Font"
