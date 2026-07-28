export BUN_INSTALL="$HOME/.bun"
export SDKMAN_DIR="$HOME/.sdkman"
export OPENCODE_DIR="$HOME/.opencode"

PATHS=(
    "$BUN_INSTALL/bin"
    "$OPENCODE_DIR/bin"
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
