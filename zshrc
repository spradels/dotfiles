autoload colors zsh/terminfo
colors

# Aliases
alias ll="ls -alG"
alias ls="ls -G"
alias vim="nvim"

export EDITOR=vi

# Use Python from homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Start tmux by default
if [ "$TMUX" = "" ]; then tmux; fi
