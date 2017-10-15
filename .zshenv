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
# export UPDATE_ZSH_DAYS=7

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
plugins=(autojump django docker encode64 fast-syntax-highlighting git npm osx pip pod python redis-cli sudo urltools yarn zsh-autosuggestions)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:/usr/local/share/dotnet"
export PATH="$PATH:/usr/local/opt/qt/bin"
export JAVA_HOME=$(/usr/libexec/java_home)
export MONO_GAC_PREFIX="/usr/local"
export PGDATA="/usr/local/var/postgres"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

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

alias sudo='sudo '
alias vimconf='vim ~/.vimrc'
alias zshconf='vim ~/.zshenv'
alias szsh='source ~/.zshenv'
alias vi='vim'
alias ll='ls -l'
alias la='ls -a'
alias l='ls'
alias CD='cd'
alias LS='ls'
alias LL='ls -l'
alias LA='ls -a'
alias lal='ls -al'
alias lla='ls -al'
alias LAL='ls -al'
alias LLA='ls -al'
alias py='python3'
alias rb='ruby'
alias gs='git status'
alias -s md='open'
alias -s rar='unrar -x'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# Support autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="armour"
