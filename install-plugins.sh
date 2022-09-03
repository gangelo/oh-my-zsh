#!/bin/zsh

# Copies the plugins directory contents to the
# $HOME/.oh-my-zsh/custom/plugins/ directory,
# with prompt to overwrite.

DIRECTORY=$HOME/.oh-my-zsh/custom/plugins/

echo copying custom plugins to $DIRECTORY...

mkdir -p $DIRECTORY

cp -ivR ./plugins/ $DIRECTORY> /dev/null
if [ $? -eq 0 ]; then
	echo copied/overwritten
fi
exit $?
