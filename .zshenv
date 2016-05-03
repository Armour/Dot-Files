# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(autojump brew bower encode64 gem git git-extras git-flow npm nvm node osx pip pod pyenv python sudo supervisor urltools wd zsh-syntax-highlighting)

# User configuration

export NVM_DIR=~/.nvm
export JAVA_HOME="`/usr/libexec/java_home -v 1.7`"
export MONO_GAC_PREFIX="/usr/local" # To use the assemblies from other formulae (mono)
export PGDATA="/usr/local/var/postgres"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh  # Add oh-my-zsh
source $(brew --prefix nvm)/nvm.sh  # Add NVM to PATH~
source /usr/local/Cellar/dnvm/1.0.0-dev/libexec/dnvm.sh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-darwin"
export PATH="$PATH:$HOME/.composer/vendor/bin" # Add Composer to PATH

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='mvim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

if [[ "$ENABLE_CORRECTION" == "true" ]]; then
  alias ebuild='nocorrect ebuild'
  alias gist='nocorrect gist'
  alias heroku='nocorrect heroku'
  alias hpodder='nocorrect hpodder'
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias mysql='nocorrect mysql'
  alias sudo='nocorrect sudo'
  setopt correct_all
fi

alias zshconf='mvim ~/.zshenv'
alias vimconf='mvim ~/.vimrc'
alias szsh='source ~/.zshenv'
alias vi='mvim'
alias vim='mvim'
alias view='mvim'
alias ll='ls -l'
alias la='ls -a'
alias l='ls'
alias f='forever -w'
alias q='exit'
alias s='nocorrect sudo'
alias CD='cd'
alias LS='ls'
alias LL='ls -l'
alias LA='ls -a'
alias lal='ls -al'
alias lla='ls -al'
alias LAL='ls -al'
alias LLA='ls -al'
alias py='python'
alias rb='ruby'
alias gs='git status'
alias gcc='gcc-5'
alias g++='g++-5'
alias -s html=mvim
alias -s java=mvim
alias -s json=mvim
alias -s js=mvim
alias -s sql=mvim
alias -s rb=mvim
alias -s h=mvim
alias -s c=mvim
alias -s cs=mvim
alias -s cpp=mvim
alias -s php=mvim
alias -s py=mvim
alias -s txt=mvim
alias -s css=mvim
alias -s coffee=mvim
alias -s scss=mvim
alias -s sass=mvim
alias -s ejs=mvim
alias -s jade=mvim
alias -s v=mvim
alias -s tex=mvim
alias -s md='open'
alias -s rar='unrar -x'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'
alias ycmc='cp /Users/armour/.vim/bundle/YouCompleteMe/.ycm_extra_conf_c.py .'
alias ycmcpp='cp /Users/armour/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py .'
alias gsed=sed

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="armour"
