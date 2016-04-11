#!/bin/bash

# be in the right place.
DIR=$(dirname $0)
cd $DIR/..

# copy the basic configs
for i in vim tmux bash; do 
  echo "### Syncing Configuration for $i ###"
  rsync -a $i/. ~/ 
done

# kick off the vim.sh setup
echo "### Running vim configuration ###"
bin/vim.sh

# kick off the go.sh setup
echo "### Running go configuration ###"
bin/go.sh
