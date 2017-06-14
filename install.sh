#!/bin/sh
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CLEAR="\033[0m"
echo "=== Installing dotfiles..."

array=(
  aliases
  inputrc
  bash_profile
  git-completion.bash
)

echo "=== creating symbolic link & source $file\n"

for file in ${array[@]};do
  if [[ -e $HOME/.$file ]]; then
    echo "$file already exists. renamed $file > $file.OLD"
    mv $HOME/.$file $HOME/.$file.OLD
  fi
  ln -s $PWD/$file $HOME/.$file
  source $HOME/.$file
done
echo "=== ${GREEN}Success${CLEAR}"
