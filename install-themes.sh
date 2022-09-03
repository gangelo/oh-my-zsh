#!/bin/zsh

# Copies the themes directory contents to the
# $HOME/.oh-my-zsh/custom/themes/ directory,
# with prompt to overwrite.

DIRECTORY=$HOME/.oh-my-zsh/custom/themes/

echo copying custom themes to $DIRECTORY...

mkdir -p $DIRECTORY

cp -ivR ./themes/ $DIRECTORY> /dev/null
if [ $? -eq 0 ]; then
	echo copied/overwritten
fi
exit $?
