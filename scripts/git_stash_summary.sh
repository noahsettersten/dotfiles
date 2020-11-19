#!/bin/sh
# Print out a single-line summary of the current stashes

STASH_COUNT=$(git stash list | wc -l)
STASH_BRANCHES=$(git stash list | awk '{print $4}' | sed 's/\n/,/g' | sed 's/://g')

if [ $STASH_COUNT -eq 1 ]
then
  echo "$STASH_COUNT stash on $STASH_BRANCHES"
fi

if [ $STASH_COUNT -gt 1 ]
then
  echo "$STASH_COUNT stashes on $STASH_BRANCHES"
fi
