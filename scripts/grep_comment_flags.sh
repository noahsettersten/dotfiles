#!/bin/sh
# Print out TODO, FIXME, DEBUG statements

FILES_PATTERN='\.(js|ts)(\..+)?$'
FILES=$(git ls-files --cached | grep -E $FILES_PATTERN)

SEARCH='console.log|TODO|FIXME|DEBUG'
echo "$FILES" | GREP_COLOR='4;5;37;41' xargs grep --color --with-filename -n -E $SEARCH

GREP_RESULT=$?

[ $GREP_RESULT -eq 0 ] && echo 'Found debugging or TODO references. Please fix or remove them.'

exit 0
