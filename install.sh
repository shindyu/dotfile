#!/bin/sh
set -e

echo "=== Installing..."

if [[ -e $HOME/.inputrc || -e $HOME/.bash_profile || -e $HOME/.aliases ]]; then
    echo "Error: Either ~/.inputrc or ~/.bash_profile or ~/.aliases already exists."
    echo "Rename the files and then try again."
    exit 1
fi

echo "=== Creating symbolic links for bash profile and aliases"
    ln -s $PWD/inputrc $HOME/.inputrc
    ln -s $PWD/bash_profile $HOME/.bash_profile
    ln -s $PWD/aliases $HOME/.aliases
    ln -s $PWD/git-completion.bash $HOME/.git-completion.bash

echo "=== Installation Successful"
