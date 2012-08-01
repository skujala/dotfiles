#!/bin/bash

# Installs the required symlinks

DIR=`pwd`
OLDFILES=~/.dotfiles_backup_`date +"%Y%m%d_%H%M"`_$$

FILES=`echo dot_*`
FILENAMES=`echo dot_* | sed -e 's/dot_/./g'`

echo "Moving old dotfiles out of the way into ${OLDFILES}"
mkdir -p ${OLDFILES}

for i in ${FILENAMES}; do
  if [[ -e ~/$i || -d ~/$i ]]; then
    mv ~/$i ${OLDFILES}/$i
  fi
done

echo "Done"	


echo "Symlinking"

for i in ${FILES}; do
  ln -s `pwd`/$i ~/`echo $i | sed -e 's/dot_/./g'`
done

echo "Done."

echo "Now profit."

