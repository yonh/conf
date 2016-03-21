#!/bin/bash 

if [ ! -d ~/.vim/colors ]; then
	mkdir -p ~/.vim/colors
fi
cp wombat256.vim ~/.vim/colors/
cp .vimrc ~/.vimrc

