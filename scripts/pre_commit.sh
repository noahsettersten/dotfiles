#!/bin/sh
# Reformat, lint, and check for debug/todo flags


# Stash any uncommitted code, to prevent linting or rewriting it
STASH_NAME="pre-commit-$(date +%s)"
git stash save -q --keep-index $STASH_NAME

cd api


FILES_PATTERN='\.(js|ts)(\..+)?$'
FILES=$(git diff --cached --name-only | grep -E $FILES_PATTERN)
# FILES=$(git ls-files --cached | grep -E $FILES_PATTERN)

# Reformat with prettier
echo "$FILES" | xargs ./node_modules/.bin/prettier --write
echo "$FILES" | xargs git add


# Run linter
yarn lint
LINT_RESULT=$?

# Reject commit on lint failure
[ $LINT_RESULT -ne 0 ] && exit 1

# Restore any stashed code
git stash pop -q


# Print out TODO, FIXME, DEBUG statements
SEARCH='console.log|TODO|FIXME|DEBUG'
echo "$FILES" | GREP_COLOR='4;5;37;41' xargs grep --color --with-filename -n -E $SEARCH

GREP_RESULT=$?

[ $GREP_RESULT -eq 0 ] && echo 'Found debugging or TODO references. Please fix or remove them.'


# Success
exit 0
