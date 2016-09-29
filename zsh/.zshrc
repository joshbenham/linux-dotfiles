# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Editor
export VISUAL=vim
export EDITOR=$VISUA

# Load ZSH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load Bash Files
for file in ~/.bash/.{paths,extras,aliases,functions}
do
    [ -r "$file" ] && source "$file"
done
unset file
