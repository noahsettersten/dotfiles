#!/bin/bash

NEXT_EVENT=$($HOME/development/investment/nextcal/.build/debug/nextcal 2>/dev/null | head -n 1)
UNREAD_COUNT=$($HOME/.dotfiles/scripts/unread_gmail.sh)

echo "$UNREAD_COUNT Unread emails / $NEXT_EVENT"
