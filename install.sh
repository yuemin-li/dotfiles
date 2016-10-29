#!/usr/bin/env bash

if [ "$(uname -s)" = "Darwin" ]; then
  brew install coreutils
fi

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
