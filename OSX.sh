#!/usr/bin/env zsh
if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,git"
fi

if [[ -z $DOTFILES ]]; then
  DOTFILES=$HOME/.dotfiles
fi

STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install
# vim:set sw=2 ts=2 et: