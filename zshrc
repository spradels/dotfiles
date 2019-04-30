autoload colors zsh/terminfo
colors

# Aliases
alias ll="ls -alG"
alias ls="ls -G"
alias vim="nvim"
alias carium="cd ~/dev/carium"

export EDITOR=vi

# Antigen
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen theme robbyrussell
antigen apply

# Use Python from homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Start tmux by default
if [ "$TMUX" = "" ]; then tmux; fi
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
