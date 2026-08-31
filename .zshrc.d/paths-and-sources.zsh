PATHS=(
    "/usr/local/go/bin"
    "$HOME/.bun/bin"
    "$HOME/.cache/.bun/bin"
    "$HOME/.opencode/bin"
    "$HOME/.local/share/fnm"
)

export PATH="$(IFS=:; echo "${PATHS[*]}"):$PATH"

SOURCES=(
    "$HOME/.cargo/env"
    "$HOME/.bun/_bun"
    "$HOME/.sdkman/bin/sdkman-init.sh"
)

for src in "${SOURCES[@]}"; do
    [[ -s "$src" ]] && source "$src"
done
