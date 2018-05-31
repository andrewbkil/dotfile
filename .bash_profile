source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.profile


#ALIASES

alias vi='nvim'
alias vim='nvim'
alias d-c='docker-compose'
#TMUX ALIASES
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new-session -s'
alias tk='tmux kill-session -t'
alias ts='tmux switch -t'

HEADING="\n||"
FOOTER="||\n"
BREAK="=="
RED="\[\033[0;31m\]"
BROWN="\[\033[0;33m\]"

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
BOLD_LGRAY="\[\033[1;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
BOLD_BLUE="\[\033[1;34m\]"
BOLD_GREEN="\[\033[1;32m\]"
BOLD_CYAN="\[\033[1;36m\]"
BOLD_RED="\[\033[1;31m\]"
BOLD_PURPLE="\[\033[1;35m\]"
BRIGHT_BYELLO="\[\033[1;93m\]"
BRIGHT_BGREEN="\[\033[1;92m\]"

GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# GxFxCxDxBxegedabagaced
# ExFxCxDxBxegedabagacad
# gxBxhxDxfxhxhxhxhxcxcx
# gxfxbEaEBxxEhEhBaDaCaD
# :anger::kiss:💥:fire::snowflake::part_alternation_mark::speech_balloon::zap:      :cyclone:   :four_leaf_clover::cloud::star2::dizzy::star::sparkles::alien::fog::coffee::snowboarder::dart::keyboard::a::o::x::arrow_right_hook::leftwards_arrow_with_hook::arrow_right::arrow_left::musical_note::thought_balloon::right_anger_bubble::speech_balloon::flower_playing_cards::deciduous_tree:

export PS1=$BROWN"💥 "$BOLD_GREEN" \w"'$(
   if [[ $(__git_ps1) =~ \*\)$ ]]
   # a file has been modified but not added
   then echo "'$RED'"$(__git_ps1 " [%s]")
   elif [[ $(__git_ps1) =~ \+\)$ ]]
   # a file has been added, but not commited
   then echo "'$YELLOW'"$(__git_ps1 " [%s]")
   # the state is clean, changes are commited
 else echo "'$GREEN'"$(__git_ps1 " [%s]")
 fi)'$GREEN"\n"$LIGHT_GRAY"$ "

# export PS1="\n\[\e[1;37m\]|-- \[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;36m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;37m\]--|\[\e[0;39m\]\n$"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
####################################################################

#####################################################################
#export PATH=/Users/andrew.kil/Documents/apache-haven-3.5.0/bin:$PATH
sh 
#Add RVM to PATH for scripting. Make sure this is the last PATH variable change

 #Setting PATH for Python 3.6
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ansible@2.0/bin:$PATH"

export NVM_DIR="/Users/andrew.kil/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
