# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git z)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load custom dotfiles config
DOTFILES="$HOME/dotfiles"
source $DOTFILES/zsh/.aliases
source $DOTFILES/zsh/.exports

# History
HISTSIZE=5000
SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS

# Better Navigation
setopt AUTO_CD
