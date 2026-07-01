# C/C++ Compilers
export CC=clang
export CXX=clang++

# Cargo
. "$HOME/.cargo/env"

# Machine-specific overrides (not tracked in dotfiles)
[[ -f "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"
