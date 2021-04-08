DOTFILES_PATH=~/projects/dotfiles/
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in $DOTFILES_PATH.{path,bash_prompt,exports,aliases,functions,extra,scriptdrop}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Shifit window cycling sizes
defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES

# Default command line editor
export EDITOR="/usr/bin/vim"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/joemorris/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/joemorris/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/joemorris/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/joemorris/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Github CLI autocomplete
eval "$(gh completion -s bash)"
