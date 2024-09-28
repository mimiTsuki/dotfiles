if type "nvim" > /dev/null 2>&1; then
  export EDITOR=nvim
fi

## HISTORY ##

# 履歴を他のシェルと共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups

## COMPLEMENT ##

# 補完を有効化する
autoload -Uz compinit && compinit

# 大文字小文字関係なく補完する
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

# 補完方法ごとにグループ化する
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

# 補完候補をメニューから選択する
zstyle ':completion:*:default' menu select=2

## OTHER ##

# cdしたときにlsする
chpwd() {
    if [[ $(pwd) != $HOME ]]; then;
        if type "eza" > /dev/null 2>&1; then
            eza --icons --git
        else
            ls
        fi
    fi
}


