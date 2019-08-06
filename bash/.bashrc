source /etc/bashrc

#
# Bash
#

export PS1='\u:\W \$ '
export CLICOLOR=1
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

#
# Grep
#

export GREP_OPTIONS="--exclude-dir={.git,node_modules}"

#
# Elixir
#

export ERL_AFLAGS="-kernel shell_history enabled"

#
# Docker Compose
#

alias dc='docker-compose'
alias dcr='docker-compose run --rm'

#
# Dotenv
#

alias denv='env $([ -f .env ] && cat .env | xargs)'

#
# Local
#

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi

#
# Tmux
#

if [ -x "$(command -v tmux)" ] && [ -z "$TMUX" ]; then
  tmux
fi
