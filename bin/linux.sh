#!/bin/bash
##Enables scripts

##Check operating system
#!/bin/bash
# This script sets up Linux environment

# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
  echo 2 >> linuxsetup.log
  exit
fi

# Create .TRASH directory in home directory
if [[ ! -d ~/".TRASH" ]]; then
  mkdir ~/".TRASH"
fi

# Rename .vimrc file if it exists
if [[ -f ~/".vimrc" ]]; then
  mv ~/".vimrc" ~/".bup vimrc"
  echo "The current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log
fi

# Redirect the contents of etc/vimrc to .vimrc
cat /etc/vimrc > ~/.vimrc

# Add statement to .bashrc file
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc

