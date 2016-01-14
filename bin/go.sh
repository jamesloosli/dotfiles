#!/bin/bash

# Set up the Go directories
mkdir -p ~/Go/src

# Set the path, and ensure that the path persists
export GOROOT=$HOME/Go
export PATH=$PATH:$GOROOT/bin


