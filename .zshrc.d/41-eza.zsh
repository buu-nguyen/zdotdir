#!/bin/zsh
#
# ls - eza when available, coreutils otherwise
#

# mask ls with eza
if (( $+commands[eza] )); then
    alias ls='eza --group-directories-first --icons=auto --git'
    alias lt='ls --tree --level=2'
fi

# more ways to ls
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'
