#!/bin/zsh


DIRECTORY=$HOME/.oh-my-zsh/custom/plugins/virtualbox/

echo copying virtualbox.plugin.zsh to $DIRECTORY...

mkdir -p $DIRECTORY

cp -i virtualbox.plugin.zsh $DIRECTORY> /dev/null
if [ $? -eq 0 ]; then
	echo copied/overwritten
fi
exit $?
