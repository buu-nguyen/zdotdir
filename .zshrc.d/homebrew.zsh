case $(uname) in
Linux)  _brew_path="/home/linuxbrew/.linuxbrew/bin/brew" ;;
Darwin) _brew_path="/opt/homebrew/bin/brew" ;;
esac

[[ -x $_brew_path ]] && eval "$($_brew_path shellenv)"
unset _brew_path
