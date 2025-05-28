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
alias cdr='cd ~'
alias python='python3'
alias snip='v ~/.config/nvim/LuaSnip'
alias vconf='v ~/.config/nvim'
alias vnote='v ~/Documents/Notes'


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/xiangjunyi/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

. "$HOME/.local/bin/env"

# python venv activate 
# pyact ()
# {
#   if 
# }
