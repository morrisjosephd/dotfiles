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

# Install useful packages
echo "[script] installing useful packages"
brew cask install iterm2
brew cask install google-chrome
brew cask install atom
brew cask install shiftit
brew cask install flycut
brew cask install postman
brew cask install visual-studio-code

# Download git completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o .git-prompt.bash &&
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o .git-completion.bash &&

# Update brew and installed packages
echo "[script] Running brew update && brew upgrade"
brew update && brew upgrade

# Remove outdated versions from the cellar.
echo "[script] Running brew cleanup"
brew cleanup

wait

git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1
