#!/bin/bash
# be in the right place.
cd ~/projects/dotfiles

# copy the basic configs
for i in vim tmux; do
  rsync -av $i/. ~/
done

# clone vim stuff direct from github for sanity
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
