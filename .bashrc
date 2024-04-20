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

# Color support for ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt: username@hostname in green, directory in blue, $ in default terminal color
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\$ "

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
