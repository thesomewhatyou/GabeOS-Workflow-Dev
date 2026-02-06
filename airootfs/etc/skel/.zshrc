# ~/.zshrc
#

# If using grml-zsh-config, source it
if [[ -f /etc/zsh/zshrc ]]; then
    source /etc/zsh/zshrc
fi

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Enable color support
autoload -U colors && colors

# Basic prompt if not using grml-zsh-config
if [[ ! -f /etc/zsh/zshrc ]]; then
    PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '
fi
