#==========================================================================
# Source aliases and bashrc if present
#==========================================================================

if [ -r ~/.aliases ]; then
  source ~/.aliases
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -r ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
#==========================================================================
# basic settings
#==========================================================================

# set default editor
export EDITOR=vim

# Make ls use colors
export CLICOLOR=1

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

# assign new colorized prompt
#export PS1="$RED$DIRTY_STATE$NO_COLOR$YELLOW\$$NO_COLOR "
# prompt
export PS1="\u@\[\e[0;34m\]:\w\$\[\e[00m\] "

