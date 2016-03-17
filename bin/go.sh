#!/bin/bash

# Set up the Go directories
mkdir -p ~/Projects/Go/src

# Set the path, and ensure that the path persists
export GOROOT=$HOME/Projects/Go
export PATH=$PATH:$GOROOT/bin
cp go/bash_go ~/.bash/bash_go

