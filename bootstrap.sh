#!/bin/sh

# Run from dotfiles project root

# Download git-completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o .git-completion.bash
wait

# Install programs from Homebrew
source brew.sh
wait

# Create symlink to .bash_profile and source it
FILE_PATH=~/Projects/dotfiles/.bash_profile

[ -r $FILE_PATH ] && [ -f $FILE_PATH ] && ln -s $FILE_PATH ~/.bash_profile

source ~/.bash_profile