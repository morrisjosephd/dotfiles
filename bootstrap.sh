#!/bin/sh

# Run from dotfiles project root

DOTFILES_PATH=~/projects/dotfiles/

# Download git-completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o .git-completion.bash
wait

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
wait

# Install programs from Homebrew
source brew.sh
wait

# Create symlinks and source
for file in .{bash_profile,gitignore_global,gitconfig}; do
  [ -r "$file" ] && [ -f "$file" ] && ln -sf $DOTFILES_PATH"$file" ~/"$file"
done;
unset file;

source $DOTFILES_PATH.bash_profile
