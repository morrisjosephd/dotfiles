# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

DOTFILES_PATH=~/Projects/dotfiles/
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in $DOTFILES_PATH.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
