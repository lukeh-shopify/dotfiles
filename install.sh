#!/bin/bash

# Backup existing files
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

if [ -f ~/.p10k.zsh ]; then
    mv ~/.p10k.zsh ~/.p10k.zsh.bak
fi

if [ -f ~/bin/shopify ]; then
    mv ~/bin/shopify ~/bin/shopify
fi

# Copy new files
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
cp shopify ~/bin/shopify

# Permissions
chmod +x ~/bin/shopify

# Pre-reqs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k