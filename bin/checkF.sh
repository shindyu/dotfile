find $* -type f -name "*.swift" -print | xargs grep -rnw -e "fdescribe\|fcontext\|fit" --color=auto
