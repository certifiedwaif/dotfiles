# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/Cellar/python36/3.6.6/bin:/usr/local/bin:/usr/local/opt/vim/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/greenama/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

bindkey -v
export FZF_BASE=/usr/local/opt/fzf
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  fzf
  git
  kubectl
  osx
  postgres
  python
  redis-cli
  vi-mode
  vim-interaction
  virtualenv
  vundle
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=~/.local/bin:$PATH

export http_proxy=http://127.0.0.1:8888
export https_proxy=http://127.0.0.1:8888
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy
export ALL_PROXY=$http_proxy
# export REQUESTS_CA_BUNDLE=~/CBAInternalRootCA.pem
# export REQUESTS_CA_BUNDLE=~/mark.pem
export REQUESTS_CA_BUNDLE=~/t/roots/ca-certificates.crt
export AWS_CA_BUNDLE=$REQUESTS_CA_BUNDLE

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=/Applications/factor:"$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export EDITOR=vim
export VIMRUNTIME=/usr/local/opt/vim/share/vim/vim82

export PATH=/usr/local/Cellar/curl/7.61.1/bin:$PATH

source  ~/.iterm_2_shell_integration.zsh

source <(kubectl completion zsh)
# export NODE_TLS_REJECT_UNAUTHORIZED='0'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"

#alias targus-on='networksetup -setnetworkserviceenabled "Targus USB3.0 DV2K Dock w Power" on'
#alias targus-off='networksetup -setnetworkserviceenabled "Targus USB3.0 DV2K Dock w Power" off'
#Targus USB3 DV4K DOCK w PD100W
alias stop-mcafee='sudo /usr/local/McAfee/AntiMalware/VSControl stopoas; sudo /usr/local/McAfee/StatefulFirewall/bin/StatefullFirewallControl stop'

# export HOMEBREW_BOTTLE_DOMAIN=https://artifactory.internal.cba/artifactory/homebrew/
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/openjdk/include"
