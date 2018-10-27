zstyle ':completion:*' menu select

export ZSH=~/.oh-my-zsh

ZSH_THEME="lambda-gitster"
COMPLETION_WAITING_DOTS="true"

plugins=()

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

if [ -f ~/.shell_aliases ]; then
  . ~/.shell_aliases
fi

if [ -f ~/.shell_helpers ]; then
  . ~/.shell_helpers
fi

if [ -f ~/.shell_colors ]; then
  . ~/.shell_colors
fi

# Show alias full command when running alias

# Store available aliases in _aliases var
_aliases="$(alias -Lr 2>/dev/null || alias)"

# Verify if the given command is alias or not
alias_for() {
  [[ $1 =~ '[[:punct:]]' ]] && return
  local found="$( echo "$_aliases" | sed -nE "/^alias ${1}='?(.+)/s//\\1/p" )"
  [[ -n $found ]] && echo "${found%\'}"
}

# This will verify each command against the available alias. If the command is alias will show the command
expand_command_line() {
  [[ $# -eq 0 ]] && return         # If there's no input, return. Else...
  local found_alias="$(alias_for $1)"    # Check if there's an alias for the comand.
  if [[ -n $found_alias ]]; then         # If there was
    echo ${found_alias}                  # Print it.
  fi
}

autoload -U add-zsh-hook
add-zsh-hook preexec expand_command_line
source <(antibody init)

export PATH=~/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
