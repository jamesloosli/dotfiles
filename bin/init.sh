#!/bin/bash
# be in the right place.
cd ~/Projects/Personal/dotfiles

# copy the basic configs
for i in vim tmux bash; do 
  rsync -a $i/. ~/ 
done

# add line for bash customizations to normal bashrc
echo "source ~/.bash/*" >> ~/.bashrc


# clone vim stuff direct from github for sanity
if [ ! -d ~/.vim/bundle/nerdtree ]; then
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

if [ ! -d ~/.vim/bundle/vim-go ]; then
  git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
fi

if [ ! -d ~/.vim/bundle/vim-colors-solarized ]; then
  git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi

if [ ! -d ~/.vim/bundle/vim-airline ]; then
  git clone git://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
fi
