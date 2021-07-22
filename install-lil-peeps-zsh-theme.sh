#!/bin/zsh

DIRECTORY=$HOME/.oh-my-zsh/custom/themes/

echo copying lil-peeps.zsh-theme to $DIRECTORY...

mkdir -p $DIRECTORY

cp -i lil-peeps.zsh-theme $DIRECTORY> /dev/null
if [ $? -eq 0 ]; then
	echo copied/overwritten
fi
exit $?
