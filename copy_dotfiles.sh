#!/bin/bash
# .git以外のdotfileをホームにシンボリックリンクとして作成
cd ~/
DOTDIR='./dotfiles'
DOTFILES=`find ./dotfiles/ -type d -name ".git" -prune -o -type f -name '.*' -print| sed 's/.*\///'`

for DOTFILE in ${DOTFILES[@]}
do
  if [ -f ${DOTFILE} ]; then
    echo ${DOTFILE}
    mv ${DOTFILE} ${DOTFILE}.old
  fi
  ln -s ${DOTDIR}/${DOTFILE} ${HOME}/${DOTFILE}
done

