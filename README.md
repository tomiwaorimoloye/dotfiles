# This is my dotfiles config with an install script included
I advice to read through the install script before running on your machine.
Run at your own risk.
You can use this code but this repo was not created with the intention to be widely used

## **Usage**

## First install clone this repository to your new computer
make sure your new computer has git installed
run ``which git``
then clone dotfiles ``git clone https://github.com/tomiwaorimoloye/dotfiles.git ~/.dotfiles``

# Then update your main computer .dotfiles folder by running bash install bash install.sh update
``cd ~/.dotfiles/ && bash install.sh update``

then update your remote repo by committing the edited files and push it to the remote

# then update your ~/.dotfiles in your new computer from the remote repo and run bash install.sh remote
``cd ~/.dotfiles/ && git pull``

# remember to make manual symlinks for the dotfiles that you would need to the directory it will be needed from
example 
``mv ~/.config/nvim ~/.config/old-nvim``
``ln -s ~/.dotfiles/nvim ~/.config/ ``

