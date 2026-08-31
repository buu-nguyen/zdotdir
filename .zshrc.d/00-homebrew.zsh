# Detect OS and set Homebrew root path accordingly
case $(uname) in
Linux)  _brew_root_path="/home/linuxbrew/.linuxbrew" ;;
Darwin) _brew_root_path="/opt/homebrew" ;;
esac

# Initialize brew shellenv if the executable exists
_brew_bin_path="$_brew_root_path/bin/brew"
[[ -x $_brew_bin_path ]] && eval "$($_brew_bin_path shellenv)"

# Add Google Cloud SDK bin to PATH
export PATH="$_brew_root_path/share/google-cloud-sdk/bin:$PATH"

# Clean up variables
unset _brew_root_path _brew_bin_path
