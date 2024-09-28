COMPLETION_DIR="${HOME}/zsh/_completion"
DOCKER_APP_DIR="/Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion"
DOCKER_COMPOSE_DIR="/Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion"

# docker compose
if [ ! -e "${COMPLETION_DIR}/_docker" -a -e $DOCKER_APP_DIR ]; then
  mkdir -p "${COMPLETION_DIR}/_docker"
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion "${COMPLETION_DIR}/_docker"
fi

if [ ! -e "${COMPLETION_DIR}/_docker-compose" -a -e $DOCKER_COMPOSE_DIR ]; then
  mkdir -p "${COMPLETION_DIR}/_docker-compose"
  ln -s $DOCKER_COMPOSE_DIR "${COMPLETION_DIR}/_docker-compose"
fi

# homebrew
if type brew &>/dev/null; then
  fpath=("$(brew --prefix)/share/zsh-completions" $fpath)
fi

eval "$(direnv hook zsh)"
eval "$(gh completion -s zsh)"
fpath=(~/zsh/_completion $fpath)

