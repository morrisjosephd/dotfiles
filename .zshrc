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

# Default command line editor
export EDITOR="/usr/bin/vim"

# Bind option arrow keys to navigation one work back/forward in iTerm2
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
