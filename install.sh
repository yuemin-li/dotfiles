#!/usr/bin/env bash

if [ "$(uname -s)" = "Darwin" ]; then
  brew install coreutils
  brew install tmux
  brew install bash-completion
  brew install httpstat
fi

### may or may not need. I have issue with my newMac with bash-completion not working.###
# brew update
# brew reinstall git
# chmod +x $(brew --prefix)/etc/bash_completion

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
