# Dotfiles

## Setup

### Linux(WSL2)

```sh
apt update
apt -y upgrade
apt-get install -y curl git zsh
chsh -s /usr/bin/zsh
```

### Mac

TBD


### 共通

Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

chezmoi

```sh
brew install chezmoi

chezmoi init --apply mimiTsuki
chezmoi cd
brew bundle
cp .gitconfig_user.example ~/.gitconfig_user
```
