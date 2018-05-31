
export PATH=$HOME/bin:/usr/local/bin:$PATH
   

#Path to your oh-my-zsh installation.
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

export ZSH=/Users/andrew.kil/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
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
# Uncomment the following line to display red dots whilst waiting for completion.  # COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# For a full list of active aliases, run `alias`.
#
# ALIASES
  alias vi='nvim'
  alias vim='nvim'
  alias reload!='RELOAD=1 source ~/.zshrc'
  alias d-c='docker-compose'  
  
  #git aliases
  alias ga='git add'
  alias gb='git branch'
  alias gpull='git pull'
  alias gpush='git push'
  alias gs='git status'
  alias gc='git commit'
  alias gS='git stash'
  alias gSls='git stash list'
  alias desktop='cd ~/Desktop'

 # tmux aliases
 alias tl='tmux ls'
 alias ta='tmux attach -t'
 alias ti='tmux' #init tmux with prefix sessions
 alias tn='tmux new-session -s' 
 alias tka='tmux kill-session -a'
 alias tk='tmux kill-session -t'
 alias ts='tmux switch -t'
 
 #deutsch aliases
alias cqstart='deutsch && vwcq/crx-quickstart/bin && sh start' 
alias cqstop='deutsch && vwcq/crx-quickstart/bin && sh stop'
alias deutsch='cd ~/Documents/Projects && ls -a'
alias cqfaster='sh ./faster.sh .'
alias cqmvn-all='mvn clean install -Pauto-deploy-all'
alias cqmvn='cd vwcom-view && mvn clean install -Pauto-deploy && cd ..'

#homebrew tree alias
 alias lst='tree -a -d -l' 
 #Trash from npm install -g trash
 alias rm='trash'
# include Z, yo
. ~/z.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="/usr/local/opt/ansible@1.9/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change

#  Autorun nvmrc files
#  -------------------------------------------------------------------
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}

add-zsh-hook chpwd load-nvmrc
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
alias jdk6='export JAVA_HOME=`/usr/libexec/java_home -v 1.6`'
alias jdk7='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'
alias jdk8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.2
export M2=$M2_HOME/bin
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/Users/andrew.kil/bin/Sencha/Cmd:$PATH"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
