#!/bin/bash

# install homebrew and all the brew installations
function install() {
  which brew
  if [[ $? == "brew not found" ]] ; then
    echo 'brew not found'
    install homebrew
    cd /usr/local/ && mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
    brew bundle install
  else
    echo 'brew found'
    brew update
    brew bundle install
  fi

  # install packer for nvim
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

  #install nerd font
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
}


# this will update global modules to global_npm  & brewfiles and then you should 
# git add and commit on this computer and then git push
# then git pull and run global_npm.sh script before running ./install.sh on the new computer
function updateLocal() {
  # install global node_modules and lspconfigs servers
  npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
  
  # update brew
  brew update

  #update brew installations
  brew bundle dump
}

if [[ $1 == "update" ]]
then
  updateLocal
else
  install
fi
