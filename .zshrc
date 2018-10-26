zstyle ':completion:*' menu select

export ZSH=~/.oh-my-zsh

ZSH_THEME="lambda-gitster"
COMPLETION_WAITING_DOTS="true"

plugins=()

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

if [ -f ~/.load_shell_helpers ]; then
  . ~/.load_shell_helpers
fi

autoload -U add-zsh-hook
add-zsh-hook preexec expand_command_line
source <(antibody init)

export PATH=~/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
