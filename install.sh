#!/bin/sh

echo "=== Installing..."

array=(
  aliases
  inputrc
  bash_profile
  git-completion.bash
)

echo "=== creating symbolic link & source $file"

for file in ${array[@]};do
  if [[ -e $HOME/.$file ]]; then
    echo "$file already exists. renamed $file > $file.OLD"
    mv $HOME/.$file $HOME/.$file.OLD
  fi
  ln -s $PWD/$file $HOME/.$file
  source $HOME/.$file
done

echo "=== Install Success"
