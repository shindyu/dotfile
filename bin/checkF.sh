# search strings
pattern="fdescribe\|fcontext\|fit"

# display filename and line number
if find $* -type f -name "*.swift" -print | xargs grep -rnw -e $pattern --color=auto
then
    echo "***** All Tests are not done. *****"
    echo "***** Don't commit or push.   *****"
fi
