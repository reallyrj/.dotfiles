#!/bin/bash.

# Remove the .vimrc file in the home directory.
rm ~/.vimrc

# Remove the line 'source ~/.dotfiles/bashrc custom' in the .bashrc file in the home directory.
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc

# Remove the .TRASH directory in the home directory.
rm -rf ~/.TRASH
