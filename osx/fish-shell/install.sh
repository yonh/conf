#!/bin/bash 
if [ -f ~/.config/fish/config.fish ]; then
	cp ~/.config/fish/config.fish ~/.config/fish/config.fish.back
fi
cp config.fish ~/.config/fish/config.fish 

