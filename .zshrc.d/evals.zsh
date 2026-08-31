# k9s
if command -v k9s &> /dev/null; then
    eval "$(k9s completion zsh)"
fi

# fnm
if command -v fnm &> /dev/null; then
    eval "$(fnm env --shell zsh)"
fi
