# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
ZSH_DISABLE_COMPFIX=true
export GOOGLE_APPLICATION_CREDENTIALS="/Users/Ezo/Slyz/makeslyz/google-service-account-credentials.json"
export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# Setup golang
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Add for macports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Add my first customed path
export PATH=/Users/Ezo/custom/docker/bin:$PATH
export EDITOR=vim
export RI="--format ansi --width 70"
export EXPO_APPLE_ID="ezodevelops@gmail.com"
export EXPO_APPLE_ID_PASSWORD="JJLwK_2Te8L@GgKW"
export DELIVER_USERNAME="ezodevelops@gmail.com"
export DELIVER_PASSWORD="JJLwK_2Te8L@GgKW"
export EXPO_APP_NAME="Read-N-Search"
export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD="howx-otnv-apac-dmoz"
export FASTLANE_USER="ezodevelops@gmail.com"
export FASTLANE_PASSWORD="JJLwK_2Te8L@GgKW"
export PROFESSIONAL_SANDBOX="wx224b46ba3f86eeb2"
export BUNDLE_INDENTIFIER="com.getomnilink"
function git-quick(){ git commit -am ${1-'patch'} }
function 1p(){ eval $(op signin my) }
function pass(){ op get item "$1" | jq -r ".details.password" | tr -d '\n' | pbcopy && echo "copied"}
function goto(){ mkdir "$1" && cd "$1" }
function n4() {noglob rake neo4j:generate_schema_migration[constraint,$1,uuid]}
function create() { npx create-react-app $1 --typescript && cd $1 && npm install @types/react }
alias docker-daemon="open --background -a Docker"
alias yd="youtube-dl"
alias ct="ctags -R *"
alias help="tldr"
alias again='history | tail -n 200 | cut -c 8- | > commands.sh'
alias p3='python3'
alias p='python'
alias p2='~/Documents/Developing/remote-setup/spot-p2.sh'
alias vv='source venv/bin/activate'
alias wechat='irssi -c 127.0.0.1 -p 6667'
alias docker_restart="osascript -e 'quit app \"Docker\"' && open -a Docker"
alias his="history > history.txt && vim history.txt"
alias v='vim'
alias vv='vim ~/.vimrc'
alias vz='vim ~/.zshrc'
alias vt='vim ~/.tmux.conf'
alias vs='vim ~/.ssh/config'
alias so='source ~/.zshrc'
alias m='make'
alias mc='make clean'
alias copylast='fc -ln -1 | awk '{$1=$1}1' | pbcopy '
alias sshh='chmod 700 ~/.ssh/config'
alias sshf='ssh -o "StrictHostKeyChecking no"'
unsetopt nomatch
function rosie(){ imessage -c '+8613001281837' -t "🚀 `echo \""$@"\"`" }
function teleport(){cat $1 | ssh -o "StrictHostKeyChecking no" $2 "sed 's/{ctrl-v}{ctrl-m}//g' | bash"}
function ch(){chmod 700 $1 }
function vadd(){cd $1 && git config --get remote.origin.url | pbcopy && cd - && config submodule add `pbpaste` $1}
# Add Docker support
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
#add z to zsh
path+=('/Library/Frameworks/Mono.framework/Versions/Current/bin')
#alias matlabgui='/Applications/MATLAB_R2017b.app/bin/matlab -nosplash'
#alias matlab='/Applications/MATLAB_R2017b.app/bin/matlab -nodesktop -nosplash'
#alias tf='source .venvs/tensorflow/bin/activate'
#alias bt='source .venvs/boto/bin/activate'
#alias cnn='python -i -c "import numpy as np, tensorflow as tf, keras as k, matplotlib.pyplot as plot, pandas as pd, h5py"'
alias jn='jupyter notebook'
#alias dm='docker-machine'
## wget with unlimited restarts
#alias uget='wget -c --retry-connrefused --tries=0 --timeout=5'
# wget with cookies stored as cookies.txt
alias sget='wget -c --retry-connrefused --tries=0 --timeout=5 --load-cookies=cookies.txt'
# Copy current directory
alias cpwd="pwd | tr -d '\n' | pbcopy"

# Added command-not-found
#if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi
# Add support for command-not-found
# Added matlab GUI
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure
# antibody bundle mafredri/zsh-async
# antibody bundle sindresorhus/pure
# zplug mafredri/zsh-async, from:github
# zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
zsh-syntax-highlighting
tmux
web-search
colored-man-pages
docker
ssh
rails
bundler
thefuck
)

# where proxy
proxy () {
  export http_proxy="http://127.0.0.1:8888"
  export https_proxy="http://127.0.0.1:8888"
  echo "HTTP Proxy on"
}

# where noproxy
noproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}

source $ZSH/oh-my-zsh.sh

# The pure prompt 
autoload -Uz promptinit; promptinit
# Change the prompt
prompt pure 
# Path to your oh-my-zsh installation.
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
zprompt_theme='pure'
ZSH_THEME=""
DEFAULT_USER='Ezo'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
if [[ `uname` == 'Darwin' ]]; then
  . /usr/local/etc/profile.d/z.sh
  alias ctags="`brew --prefix`/bin/ctags"
  # Virtualenv/VirtualenvWrapper
  #source /usr/local/bin/virtualenvwrapper.sh
  h=()
  if [[ -r ~/.ssh/config ]]; then
    h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
  fi
  if [[ -r ~/.ssh/known_hosts ]]; then
    h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
  fi
  if [[ $#h -gt 0 ]]; then
    zstyle ':completion:*:ssh:*' hosts $h
    zstyle ':completion:*:slogin:*' hosts $h
  fi
  plugins=(
  bwana
  )
elif [[ `uname` == 'Linux' ]]; then
  export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/home/ubuntu/src/cntk/bin:/usr/local/mpi/bin:$PATH
  export LD_LIBRARY_PATH=/home/ubuntu/src/cntk/bindings/python/cntk/libs:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:$LD_LIBRARY_PATH
  export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
  export PYTHONPATH=/home/ubuntu/src/cntk/bindings/python
  if [ -e /usr/lib/libmpi_cxx.so ]; then
    export LD_PRELOAD=/usr/lib/libmpi_cxx.so
  fi
  export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/usr/local/mpi/bin:$PATH
  export LD_LIBRARY_PATH_WITH_DEFAULT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:/lib/nccl/cuda-9.0/lib/:$LD_LIBRARY_PATH_WITH_DEFAULT_CUDA
  export LD_LIBRARY_PATH_WITHOUT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/lib:/usr/lib:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH_WITHOUT_CUDA
  export LD_LIBRARY_PATH=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH
  export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
  export PATH=$HOME/anaconda3/bin/:$PATH
fi
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
eval "$(rbenv init -)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
