#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for Cask
if test ! $(which brew-cask)
then
  echo "  Installing Cask for you."
  brew install caskroom/cask/brew-cask
fi

# Install homebrew packages
brew install python
brew install ruby
brew install node
brew install coreutils
brew install git

# Install cask packages
brew cask install google-chrome
brew cask install iterm2
brew cask install dropbox
brew cask install alfred
brew cask install vlc

# Sublime Text install.
brew tap caskroom/versions
brew cask install sublime-text3

brew cask cleanup

exit 0