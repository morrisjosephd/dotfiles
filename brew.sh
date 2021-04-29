#!/bin/sh

# Install (if not already installed) and update Homebrew
echo "[script] Checking if Homebrew installed"
if ! type brew 2> /dev/null; then
    echo "[script] Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    wait
fi

echo "[script] Running brew doctor"
brew doctor
wait

# Remove outdated versions from the cellar.
echo "[script] Running brew cleanup"
brew cleanup
wait

# Update brew and installed packages
echo "[script] Running brew update && brew upgrade"
brew update && brew upgrade
wait

# Install useful packages
echo "[script] installing useful packages"
brew install fd
brew install bash-completion
brew install httpie
brew install htop
brew install gh
brew install jq
brew install tldr
brew install tree
brew install vim
brew install yarn --without-node

brew install contexts
brew install dash
brew install docker
brew install iterm2
brew install dropbox
brew install flycut
brew install google-chrome
brew install graphql-playground
brew install idrive
brew install lastpass
brew install makemkv
brew install postman
brew install rowanj-gitx
brew install screen
brew install shiftit
brew install skitch
brew install slack
brew install visual-studio-code
