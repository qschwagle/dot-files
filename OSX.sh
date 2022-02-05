#!/usr/bin/env zsh
# OSX.sh

if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,git,zsh"
fi

if [[ -z $DOTFILES ]]; then
  DOTFILES=$HOME/.dotfiles
fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# We need dependencies for DAP


STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install.sh
# vim:set sw=2 ts=2 et:
