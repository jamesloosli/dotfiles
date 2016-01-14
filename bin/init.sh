#!/bin/bash

# be in the right place.
DIR=$(dirname $0)
cd $DIR/..

# copy the basic configs
for i in vim tmux bash; do 
  rsync -a $i/. ~/ 
done

# kick off the vim.sh setup
bin/vim.sh

# kick off the go.sh setup
bin/go.sh
