#! /bin/bash

# Update dotfiles quickly and easily

# Local repository variable
# IMPORTANT
REPO="/home/gecotron/Documents/dotfiles"


# Polybar
cp -r ~/.config/polybar $REPO/polybar

# Berry WM
cp -r ~/.config/berry $REPO/berry

# Neovim 
cp -r ~/.config/nvim $REPO/nvim

# Xresources/Urxvt Config
cp -r ~/.Xresources $REPO/Xresources

# Zshrc
cp -r ~/.zshrc $REPO/zshrc

# Finally, copy self for later use
cp -r ~/updot.sh $REPO/updot.sh
