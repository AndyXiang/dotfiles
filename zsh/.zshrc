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
