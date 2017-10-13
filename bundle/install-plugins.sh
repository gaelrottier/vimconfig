#!/bin/bash

CD=$(pwd)
PLUGINS="scrooloose/nerdcommenter
  kien/rainbow_parentheses.vim
  xolox/vim-misc
  jeffkreeftmeijer/vim-numbertoggle
  benmills/vimux
  scrooloose/nerdtree
  ervandew/screen
  xolox/vim-notes
  nvie/vim-togglemouse"

 echo "Do commands exist ?"
if [ -z "$(command -v git)" ]; then
    echo "Git not found !"
    exit 1
elif [ -z "$(command -v vim)" ]; then
    echo "Vim not found !"
    exit 1
fi

cd ~/.vim/bundle

for repo in $PLUGINS
do
   git clone https://github.com/${repo}.git
done

cd $CD
