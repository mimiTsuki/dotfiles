if type "eza" > /dev/null 2>&1; then
  alias e='eza --icons --git'
  alias ea='eza -a --icons --git'
  alias ee='eza -aahl --icons --git'
  alias et='eza -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias eta='eza -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
fi

alias sed='gsed'
alias wttr='curl wttr.in/fukuoka'
alias pbjq="pbpaste | jq . -S | pbcopy"

alias fdir='fzf-cd'
alias fdcrm='fzf-docker-container-rm'
alias fde='fzf-docker-exec'
alias fdl='fzf-docker-log'
alias fgco='fzf-git-checkout'
alias fgl='fzf-git-log'
