#!/bin/zsh
#
# find - fd when available, coreutils otherwise
#

# search by type
if (( $+commands[fd] )); then
    alias fdd='fd --type d'
    alias ff='fd --type f'
else
    alias fdd='find . -type d -name'
    alias ff='find . -type f -name'
fi
