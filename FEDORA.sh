#!/usr/bin/env zsh

if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,git"
fi

if [[ -z $DOTFIELS ]]; then
  DOTFILES=$HOME/.dotfiles
fi

STOW_FOLDERS=$STOW_FOLDERS DOTFIlES=$DOTFILES $DOTFILES/install
# vim:set sw=2 ts=2 et:
