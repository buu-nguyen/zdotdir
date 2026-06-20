export BUN_INSTALL="$HOME/.bun"
export SDKMAN_DIR="$HOME/.sdkman"

PATHS=(
    "$BUN_INSTALL/bin"
)

export PATH="$(IFS=:; echo "${PATHS[*]}"):$PATH"

SOURCES=(
    "$HOME/.cargo/env"
    "$BUN_INSTALL/_bun"
    "$SDKMAN_DIR/bin/sdkman-init.sh"
)

for src in "${SOURCES[@]}"; do
    [[ -s "$src" ]] && source "$src"
done
