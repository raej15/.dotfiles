#!/bin/bash
#^ shebang 

#deletes .vimrc
rm -f .vimrc

# searches for source~/.dotfiles etc and replaces with "" in the bashrc file
sed -i -e 's/source \~\/\.dotfiles\/bashrc_custom//g'  ~/.bashrc

#deletes .TRASH
rm -f .TRASH
