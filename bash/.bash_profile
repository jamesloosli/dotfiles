#!/bin/bash

# Added .bin in my home dir, and sbin because some brew utils are stored there
PATH=$PATH:~/.bin:/usr/local/sbin

if [ $SHELL = "/bin/bash" ] ; then
	source ~/.bashrc
fi
