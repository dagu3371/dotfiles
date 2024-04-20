# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and other variables should work with interactive shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Alias definitions
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias eb='vim ~/dotfiles/.bashrc'
alias ev='vim ~/dotfiles/vim/.vimrc'
alias sb='source ~/.bashrc'
alias c='clear'

# Color support for ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
eval "$(starship init bash)"

export PATH="/usr/local/bin:$PATH"

# Default Editor
export EDITOR='vim'  # Change vim to whatever you prefer

# Path
export PATH="$PATH:$HOME/bin"

# History Control
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignoreboth:erasedups  # Ignore duplicates, spaces, and both

# Case-insensitive tab completion
bind "set completion-ignore-case on"

# Check window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Automatically cd to a directory by typing its name
shopt -s autocd

# Programming Aliases
alias python='python3'
alias pip='pip3'

# Interactive operation
# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# fzf aliases
# use fp to do a fzf search and preview the files
# alias fp="find . -type f 2> /dev/null | fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias fp="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"

# search for a file with fzf and open it in vim
alias vf='vim $(fp)'

# For setting history length see HISTSIZE and HISTFILESIZE above
# Ensure safety with interactive rm
alias rm='rm -i'

# Load custom scripts if they exist
if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
if [ -f "$HOME/.bash_custom" ]; then
    . "$HOME/.bash_custom"
fi
