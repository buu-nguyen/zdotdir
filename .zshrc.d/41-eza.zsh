(( $+commands[eza] )) || return 1

# mask ls with eza
alias ls='eza --group-directories-first --icons=auto --git'

# tree view
alias lt='ls --tree --level=2'
