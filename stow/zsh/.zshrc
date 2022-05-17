# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Note - this alias must be before 'antigen init' so that solarised ls colors work correctly on OSX
alias dircolors='gdircolors'

source /usr/local/share/antigen/antigen.zsh
antigen init $HOME/.antigenrc

ZSH_CUSTOM=$HOME/oh-my-zsh-custom-scripts

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  gitfast
  git-extras
  aws
  common-aliases
  dirhistory
  docker
  copypath
  gnu-utils
  history-substring-search
  kubectl
)

#Update automatically every 13 days, without asking
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

export LS_COLORS="$(vivid generate molokai)"
alias ls="ls -G --color=auto"

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

unsetopt SHARE_HISTORY

autoload -U +X bashcompinit && bashcompinit

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/usr/local/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl@3/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@3/include -I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

[ -s "$HOME/.jabba/jabba_profile.sh" ] && source "$HOME/.jabba/jabba_profile.sh"

alias k="kubectl"
alias wd="cd $HOME/git"
ssh-add -K ~/.ssh/id_rsa

export KUBECONFIG=~/.kube/config

if [[ -s "$HOME/.private_environment" ]]; then
	source "$HOME/.private_environment"
else
        # Add any private environment variables (e.g. secret tokens) to the file to be imported into shell
	echo "No private environment file found (~/.private_environment)"
fi
