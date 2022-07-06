#! /bin/bash

# Update dotfiles quickly and easily

# Local repository variable
# IMPORTANT
REPO="/home/gecotron/Documents/dotfiles"


# Polybar
cp -r ~/.config/polybar $REPO/

# Rofi
cp -r ~/.config/rofi $REPO/

# Berry WM
cp -r ~/.config/berry $REPO/

# Neovim 
cp -r ~/.config/nvim $REPO/

# Xresources/Urxvt Config
cp -r ~/.Xresources $REPO/Xresources

# Zshrc
cp -r ~/.zshrc $REPO/zshrc

# Finally, copy self for later use
cp -r ~/updot.sh $REPO/updot.sh
