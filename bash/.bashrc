#!/bin/bash

#source the files in ~/.bash
for i in $(ls ~/.bash) ; do
	source ~/.bash/$i
done
