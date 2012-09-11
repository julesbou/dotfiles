#!/usr/bin/env zsh
#
# Exports and oh-my-zsh configuration

# Export common variables
export PATH="$DOTFILES/scripts:$PATH"

export BROWSER="chrome"
export EDITOR='mvim'
export GIT_EDITOR='mvim'

# oh-my-zsh configuration
#export DISABLE_AUTO_TITLE="true"

# Enable more syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# CDPATH tells the cd command to look in
# this colon-separated list of directories for your destination.
CDPATH=$HOME:..:/etc

# Load less keys
#lesskey "$DOTFILES/lesskeys"

# Disable flow control in rxvt, frees ctrl-s & ctrl-q mappings
stty -ixon -ixoff

# Add dircolors (gdircolors when using zsh on mac)
eval $(gdircolors $DOTFILES/zsh/dircolors-solarized/dircolors.ansi-dark)

#eval `keychain --eval --agents ssh --nogui -Q -q id_rsa`
