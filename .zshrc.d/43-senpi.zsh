#!/bin/zsh
#
# pi - resolves to senpi via symlink in ~/.local/bin
#

if (( $+commands[pi] )); then
    return
fi

if (( $+commands[senpi] )); then
    local senpi_real
    senpi_real=$(readlink -f "${commands[senpi]}")

    # symlink pi -> senpi in ~/.local/bin
    [[ (! -e "$HOME/.local/bin/pi") && (! -L "$HOME/.local/bin/pi") ]] && ln -s "$senpi_real" "$HOME/.local/bin/pi"

    # share config/extensions with senpi
    [[ (-d $HOME/.senpi) && (! -e $HOME/.pi) && (! -L $HOME/.pi) ]] && ln -s "$HOME/.senpi" "$HOME/.pi"
fi

