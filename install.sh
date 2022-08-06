#!/bin/bash

function install() {
  # install homebrew and all the brew installations
  which brew
  if [[ $? == "brew not found" ]] ; then
    echo 'brew not found'
    # install homebrew
    cd /usr/local/ && mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
    brew bundle install
  else
    echo 'brew found'
    # update your brew and add new installations
    brew update
    brew bundle install
  fi

  #install nerd font
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font

  # install global node modules which include lsp servers
  bash global_npm.sh
}


# this will update global modules to global_npm  & brewfiles and then you should 
# git add and commit on this computer and then git push
# then git pull and run bash install.sh on the new computer
function updateLocal() {
  # create a file (global_npm.sh) that installs global node_modules and lspconfigs servers
  npm list -g --depth=0 > global_npm.txt && sed -i '' 's/├── //g' global_npm.txt && sed -i '' 's/└── //g' global_npm.txt && sed -i '' 's/\/usr\/local\/lib//g' global_npm.txt && sed -i '' '/^[[:space:]]*$/d' global_npm.txt && rm global_npm.sh; touch global_npm.sh && cat global_npm.txt | while read line; do echo "npm install -g "${line} >> global_npm.sh; done && chmod 755 global_npm.sh && rm global_npm.txt
  
  # update brew and installations
  brew update
  mv ./Brewfile ./old-brewfile.txt
  brew bundle dump # this creates a new ./Brewfile
}

# this is the conditional that determines whether to update the .dotfiles folder and sync to github
if [ $1 == "update" ]
then
  echo "updating local..."
  updateLocal
elif [ $1 == "remote" ]
then
  echo "installing from remote..."
  install
fi
