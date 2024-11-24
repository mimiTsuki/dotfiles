# zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
export FZF_DEFAULT_OPTS='--layout reverse'

# Rancher Desktop
if [ -d "~/.rd" ]; then
    export PATH="/Users/mimitsuki/.rd/bin:$PATH"
fi
