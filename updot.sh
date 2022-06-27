#! /bin/bash

# Update dotfiles quickly and easily

# Polybar
cp -r ~/.config/polybar ~/Documents/dotfiles/polybar

# Berry WM
cp -r ~/.config/berry ~/Documents/dotfiles/berry

# Neovim 
cp -r ~/.config/nvim ~/Documents/dotfiles/nvim

# Xresources/Urxvt Config
cp -r ~/.Xresources ~/Documents/dotfiles/Xresources

# Zshrc
cp -r ~/.zshrc ~/Documents/dotfiles/zshrc

# Finally, copy self for later use
cp -r ~/updot.sh ~/Documents/dotfiles/updot.sh
