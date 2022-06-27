#! /bin/bash

# Install dotfiles quickly and easily

# Gets Variables
# IMPORTANT

echo "what is your username? "
read NAME
echo "Hello $NAME"
echo ""

echo "Is the repository cloned in your home directory ? y/n"
read YN
if [$YN = "n"]
then
	echo "please clone the repo in your home directory, the script will break otherwise"
	echo "an option to clone from anywhere is being worked on, please either move the repo to your home directory, or edit this script to work from the directory you cloned it from"
fi
# Base Variable
HOME="/home/$NAME"
REPO="/$HOME/dotfiles"
CONF="$HOME/.config"

# Nice Message pt. 1
echo "Installing Dotfiles"

# Polybar
cp -r $REPO/polybar $HOME/.config/polybar

# Berry WM
cp -r $REPO/berry $HOME/.config/berry

# Neovim 
cp -r $REPO/nvim $HOME/.config/nvim

# Xresources/Urxvt Config
cp -r $REPO/Xresources $HOME/.Xresources

# Zshrc
cp -r $REPO/zshrc $HOME/.zshrc

# Nice message pt. 2
echo "All Finished! Now you can restart and enjoy a pretty desktop!"
