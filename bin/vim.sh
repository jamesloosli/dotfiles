#!/bin/bash

PWD=$(pwd)
VIM_MODULES_GITHUB=(scrooloose/nerdtree
 fatih/vim-go
 altercation/vim-colors-solarized
 bling/vim-airline
 gkz/vim-ls)

# clone vim stuff direct from github for sanity
for i in $VIM_MODULES_GITHUB; do
  SHORTNAME=$(echo $i | sed 's/.*\///')
  echo $SHORTNAME
  if [ ! -d ~/.vim/bundle/$SHORTNAME ]; then
    git clone https://github.com/$i.git ~/.vim/bundle/$SHORTNAME
  else
    cd ~/.vim/bundle/$SHORTNAME && git pull && cd $PWD
  fi
done

cd $PWD
