# write to bash_profile > 
# test -r ~/.bashrc && . ~/.bashrc
#
#==========================================================================
# basic settings
#==========================================================================

export LANG=en_US.UTF-8

# set default editor
export EDITOR=vim

# Make ls use colors
export LSCOLORS=gxfxcxdxbxegedabagacad

#==========================================================================
# Prompt
#==========================================================================

function dirty_state {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

RED='\[\e[1;31m\]'
NO_COLOR='\[\e[0m\]'
DIRTY_STATE='$(dirty_state)'
YELLOW='\[\e[0;33m\]'

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# export PS1="\u@\h:\[\e[1;33m\]\w\[\e[0m\]\[\e[0;31m\]\$(parse_git_branch)\[\e[0m\]$ "
export PS1="\u@\[\e[0;33m\]:\w\[\e[00m\]\$(parse_git_branch)$ "

source ~/.aliases
source ~/.inputrc
source ~/.git-completion.bash
