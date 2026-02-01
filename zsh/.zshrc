# Load custom files
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.exports ] && source ~/.exports

# History
HISTSIZE=5000
SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS

# Better Navigation
setopt AUTO_CD

#Prompt
PROMPT='%n@%m:%~$ '

 
