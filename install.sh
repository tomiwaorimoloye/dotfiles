#!/bin/bash

# check if homebrew is installed
which brew
if [[ $? == "brew not found" ]] ; then
  echo 'brew not found'
  #install homebrew
#  cd /usr/local/ && mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
  #brew bundle install
else
  echo 'brew found'
  #brew update
  #brew bundle install
fi

# install packer for nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install nerd font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

