#!/bin/bash

PWD=$(pwd)
VIM_MODULES_GITHUB=("airblade/vim-gitgutter"\
 "altercation/vim-colors-solarized"\
 "bling/vim-airline"\
 "bling/vim-bufferline"\
 "digitaltoad/vim-jade"\
 "fatih/vim-go"\
 "gkz/vim-ls"\
 "lepture/vim-jinja"\
 "mitsuhiko/vim-jinja"\
 "saltstack/salt-vim"\
 "scrooloose/nerdtree")

# clone vim stuff direct from github for sanity
for i in ${VIM_MODULES_GITHUB[@]}; do
  SHORTNAME=$(echo $i | sed 's/.*\///')
  echo "### Updating $SHORTNAME ###"
  cd ~/.vim/bundle/$SHORTNAME && git pull || git clone https://github.com/$i.git ~/.vim/bundle/$SHORTNAME
  cd $PWD
done

cd $PWD
