#!/bin/bash

#checks if the Operating system is not linux
if [ "$(uname)" != "Linux" ] ; then
	#if operating system is linux, it appends "ERROR" to log file
        echo "ERROR" >> linuxsetup.log
	#exit command exits out 
        exit 0
#the else will only run if the if isnt true
else
	#makes a file called .TRASH
        touch .TRASH
	#changes the name of vimrc to .bup_vimrc
        mv ~/.vimrc bup_vimrc
	#explains this change and echos to log file
        echo ".vimrc file was changed to .bupvimrc" >> linuxsetup.log
	#overwrites contents of etc/vimrc to .vimrc
	cat etc/vimrc > ~/.vimrc

	#appends "source ~/. ... " to the end of the .bashrc file
        echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
#end of an if statement
fi
