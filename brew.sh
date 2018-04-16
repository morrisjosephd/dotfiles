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

# Clean up broken symlinks
echo "[script] Running brew prune"
brew prune
wait

# Update brew and installed packages
echo "[script] Running brew update && brew upgrade"
brew update && brew upgrade
wait

# Install useful packages
echo "[script] installing useful packages"
brew install jq
brew install vim
brew install tree
brew install yarn --without-node
brew cask install iterm2
brew cask install google-chrome
brew cask install atom
brew cask install shiftit
brew cask install flycut
brew cask install postman
brew cask install visual-studio-code
brew cask install docker
brew install bash-completion
