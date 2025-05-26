# Starship
eval "$(starship init zsh)"

# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Diable underline
(( ${+ZSH_HIGHLIGHT_STYLES}  )) || typest -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none 
ZSH_HIGHLIGHT_STYLES[path_prefix]=none 

# Activate autosuggestion 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias for shortcuts 
alias v='nvim'
alias lsa='ls -A'
alias gits='git status'
alias gita='git add *'
alias cdf='cd ..'



# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/xiangjunyi/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
