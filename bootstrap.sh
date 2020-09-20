#!/bin/sh

# Run from dotfiles project root

# Download git-completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o .git-completion.bash
wait

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
wait

# Install programs from Homebrew
source brew.sh
wait

# Create symlink to .bash_profile and source it
FILE_PATH=~/projects/dotfiles/.bash_profile
[ -r $FILE_PATH ] && [ -f $FILE_PATH ] && ln -s $FILE_PATH ~/.bash_profile
wait

source ~/.bash_profile

# Create symlink to .gitignore_global and source it
FILE_PATH=~/projects/dotfiles/.gitignore_global
[ -r $FILE_PATH ] && [ -f $FILE_PATH ] && ln -s $FILE_PATH ~/.gitignore_global
wait

source ~/.gitignore_global

# Create symlink to .gitconfig and source it
FILE_PATH=~/projects/dotfiles/.gitconfig
[ -r $FILE_PATH] && [ -f $FILE_PATH ] && ln -s $FILE_PATH ~/.gitconfig
wait

source ~/.gitconfig
