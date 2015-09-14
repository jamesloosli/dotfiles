#!/bin/bash

PWD=$(pwd)
VIM_MODULES_GITHUB=("scrooloose/nerdtree"\
 "fatih/vim-go"\
 "altercation/vim-colors-solarized"\
 "saltstack/salt-vim"\
 "bling/vim-airline"\
 "gkz/vim-ls")

# clone vim stuff direct from github for sanity
for i in ${VIM_MODULES_GITHUB[@]}; do
  SHORTNAME=$(echo $i | sed 's/.*\///')
  echo "### Updating $SHORTNAME ###"
  cd ~/.vim/bundle/$SHORTNAME && git pull || git clone https://github.com/$i.git ~/.vim/bundle/$SHORTNAME
  cd $PWD
done

cd $PWD
