#!/usr/bin/env zsh

if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,git,zsh"
fi

if [[ -z $DOTFIELS ]]; then
  DOTFILES=$HOME/.dotfiles
fi

STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install.sh
# vim:set sw=2 ts=2 et:
