# ~/.zshrc
# zsh user configuration for interactive shells.

# Use vim keybindings.
bindkey -v

# Enable autocompletion.
autoload -Uz compinit && compinit

# Enable prompt themes.
autoload -Uz promptinit && promptinit
# Use suse prompt.
prompt suse

# History options.
export HISTFILE="$HOME/.cache/zsh/histfile"
export HISTSIZE=10000
export SAVEHIST=$((HISTSIZE/2))
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY

# Enable history search.
# Only the past commands matching the current line up to the current cursor
# position will be shown when Up or Down keys are pressed.
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

setopt correct          # try to correct spelling
setopt no_correctall    # only for commands, not filenames

setopt globdots         # also match dotfiles

# Aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias c='clear'

