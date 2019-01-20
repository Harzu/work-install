#!bin/bash

# Xcode bin builders
xcode-select --install || true

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Install packages with homebrew
brew install openssh
brew install openssl
brew install git
brew install neovim
brew install wget
brew install gem
brew install python
brew install python3
brew install go
brew install ruby
brew install screenfetch
brew install autojump

# Fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
