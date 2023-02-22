# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
HYPHEN_INSENSITIVE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export DOCKER_DEFAULT_PLATFORM=linux/amd64 
export TFENV_ARCH=amd64

alias gs="git status"
alias gd="git diff"
set completion-ignore-case on
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export TFENV_ARCH=amd64

# custom prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b %m%u%c'
setopt PROMPT_SUBST
PROMPT='%F{yellow}%*%f %F{cyan}%~%f %F{magenta}${vcs_info_msg_0_}%f
λ '

# don't put blank/repeated lines in history
HISTCONTROL=ignoreboth

# color LS commands
alias ls='ls -G'
