export BUN_INSTALL="$HOME/.bun"
export SDKMAN_DIR="$HOME/.sdkman"

SOURCES=(
    "$HOME/.cargo/env"
    "$BUN_INSTALL/bin"
    "$SDKMAN_DIR/bin/sdkman-init.sh"
)

for src in "${SOURCES[@]}"; do
    [[ -s "$src" ]] && source "$src"
done
