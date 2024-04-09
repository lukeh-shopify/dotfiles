#!/bin/bash

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

if [ -f ~/.p10k.zsh ]; then
    mv ~/.p10k.zsh ~/.p10k.zsh.bak
fi

cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
