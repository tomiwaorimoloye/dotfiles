# My dotfiles config with install script included
Use at your own risk.\
This repo was created with the intent to be used solely by the creator

## **Usage**

* ### Update your main computer ```.dotfiles folder```
```shell
cd ~/.dotfiles/ && bash install.sh update
``` 

* ### Clone this repository to your new computer and ``git push`` to the remote repo
```shell
git clone https://github.com/tomiwaorimoloye/dotfiles.git ~/.dotfiles
```


* ### Make sure your ``~/.dotfiles`` in your new computer are up to date
```shell
cd ~/.dotfiles/ && git pull
```


* ### Run the script
```shell
bash install.sh remote
```
* ### Remember to make manual symlinks for the dotfiles that you would need to the directory it will be needed from 
```shell
mv ~/.config/nvim ~/.config/old-nvim
# create symlink
ln -s ~/.dotfiles/nvim ~/.config/ 
```

## Script process
The script will
* install brew if not yet installed and install all brew installations from the repo
* install nerd font
* install global node modules which include neovim lsp servers

