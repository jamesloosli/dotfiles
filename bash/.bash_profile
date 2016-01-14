#!/bin/bash

# Migrating to macports from brew because... reasons.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

if [ $SHELL = "/bin/bash" ] ; then
	source ~/.bashrc
fi
