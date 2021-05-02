DOTFILES_PATH=~/projects/dotfiles/
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in $DOTFILES_PATH.{path,prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Load asdf autocomplete
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

# Load Github CLI autocomplete
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)

# Load zsh functions
autoload -Uz compinit && compinit

# Load NMV
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Shifit window cycling sizes
# defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES

# Default command line editor
export EDITOR="/usr/bin/vim"

# Github CLI autocomplete
# eval "$(gh completion -s bash)"
