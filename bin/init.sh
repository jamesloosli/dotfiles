#!/bin/bash

# be in the right place.
cd ~/Projects/Personal/dotfiles

# copy the basic configs
for i in vim tmux bash; do 
  rsync -a $i/. ~/ 
done

# kick off the vim.sh setup
bin/vim.sh

