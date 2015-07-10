#!/bin/bash

cd ~/projects/dotfiles

for i in vim tmux; do
  rsync -av $i/. ~/
done
