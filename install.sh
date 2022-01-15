#!/usr/bin/env zsh


# $STOW_FOLDER specifies which folders to install, these are set in OS specific install 
pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	stow -D $folder
	stow $folder
done
popd
