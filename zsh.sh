#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

ABSPATH=$(cd "$(dirname "$0")"; pwd)
# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Make sure we’re using the latest Homebrew.
ruby -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add alias
echo "source $ABSPATH/.aliases" >> ~/.zshrc
echo "Added $ABSPATH/.aliases into ~/.zshrc"

# Add Export
echo "source $ABSPATH/.exports" >> ~/.zshrc
echo "Added $ABSPATH/.exports into ~/.zshrc"

echo "Please run know :"
echo ""
echo "        . ~/.zshrc"
echo ""
