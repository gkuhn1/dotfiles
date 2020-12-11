# old prompt
GIT_PS1_SHOWDIRTYSTATE=true
#RED="\[\033[33;31m\]"
#YELLOW="\[\033[33;33m\]"
#GREEN="\[\033[01;32m\]"
#BLUE="\[\033[01;34m\]"
#CYAN="\[\033[01;36m\]"
#WHITE="\[\033[00m\]"
PS1_GIT='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (\e[33;33m%s\e[0m) ")\$ '
PS1_RVM='\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\](\[\033[33;31m\]$(~/.rvm/bin/rvm-prompt i v g)\[\033[33;33m\]$(__git_ps1 " %s")\[\033[00m\])\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$ '
PS1_PYENV='\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\](\[\033[33;31m\]$(basename $VIRTUAL_ENV)\[\033[33;33m\]$(__git_ps1 " %s")\[\033[00m\])\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$ '
export PS1 PS1_RVM PS1_PYENV
export PS1=$PS1_GIT

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

########################################

# # @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
# # Shamelessly copied from https://github.com/gf3/dotfiles
# # Screenshot: http://i.imgur.com/s0Blh.png

# if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
#   export TERM=gnome-256color
# elif infocmp xterm-256color >/dev/null 2>&1; then
#   export TERM=xterm-256color
# fi

# if tput setaf 1 &> /dev/null; then
#   tput sgr0
#   if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
#     MAGENTA=$(tput setaf 9)
#     ORANGE=$(tput setaf 172)
#     GREEN=$(tput setaf 190)
#     PURPLE=$(tput setaf 141)
#     WHITE=$(tput setaf 256)
#   else
#     MAGENTA=$(tput setaf 5)
#     ORANGE=$(tput setaf 4)
#     GREEN=$(tput setaf 2)
#     PURPLE=$(tput setaf 1)
#     WHITE=$(tput setaf 7)
#   fi
#   BOLD=$(tput bold)
#   RESET=$(tput sgr0)
# else
#   MAGENTA="\033[1;31m"
#   ORANGE="\033[1;33m"
#   GREEN="\033[1;32m"
#   PURPLE="\033[1;35m"
#   WHITE="\033[1;37m"
#   BOLD=""
#   RESET="\033[m"
# fi

# export MAGENTA
# export ORANGE
# export GREEN
# export PURPLE
# export WHITE
# export BOLD
# export RESET

# function parse_git_dirty() {
#   [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
# }

# function parse_git_branch() {
#   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
# }

# PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]at \[$ORANGE\]\h \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"

###########################

# custom_prompt () {
#   history -a
#   history -c
#   history -r

#   local BRANCH=`git branch 2> /dev/null | grep \* | sed 's/* //'`

#   if [[ "$BRANCH" = "" ]]; then
#     BRANCH=`git status 2> /dev/null | grep "On branch" | sed 's/# On branch //'`
#   fi

#   local RUBY_VERSION=`ruby -e "puts RUBY_VERSION"`

#   if [ -f Gemfile.lock ]; then
#     local RAILS_VERSION=`cat Gemfile.lock | grep -E " +rails \([0-9]+" | sed 's/ *rails (\(.*\))/\1/'`
#   fi

#   local RUBY_PROMPT=""
#   local STATUS=`git status 2>/dev/null`
#   local PROMPT_COLOR=$GREEN
#   local STATE=" "
#   local NOTHING_TO_COMMIT="# Initial commit"
#   local BEHIND="# Your branch is behind"
#   local AHEAD="# Your branch is ahead"
#   local UNTRACKED="# Untracked files"
#   local DIVERGED="have diverged"
#   local CHANGED="# Changed but not updated"
#   local TO_BE_COMMITED="# Changes to be committed"
#   local CHANGES_NOT_STAGED="# Changes not staged for commit"
#   local LOG=`git log -1 2> /dev/null`

#   if [[ "$RAILS_VERSION" ]]; then
#     local RAILS_PROMPT="${RAILS_VERSION}#"
#   fi

#   RUBY_PROMPT="${GRAY}[${RAILS_PROMPT}${RUBY_VERSION}]${NO_COLOR} "

#   if [ "$STATUS" != "" ]; then
#     if [[ "$STATUS" =~ "$CHANGES_NOT_STAGED" ]]; then
#       PROMPT_COLOR=$RED
#       STATE=""
#     elif [[ "$STATUS" =~ "$NOTHING_TO_COMMIT" ]]; then
#       PROMPT_COLOR=$RED
#       STATE=""
#     elif [[ "$STATUS" =~ "$DIVERGED" ]]; then
#       PROMPT_COLOR=$RED
#       STATE="${STATE}${RED}↕${NO_COLOR}"
#     elif [[ "$STATUS" =~ "$BEHIND" ]]; then
#       PROMPT_COLOR=$RED
#       STATE="${STATE}${RED}↓${NO_COLOR}"
#     elif [[ "$STATUS" =~ "$AHEAD" ]]; then
#       PROMPT_COLOR=$RED
#       STATE="${STATE}${RED}↑${NO_COLOR}"
#     elif [[ "$STATUS" =~ "$CHANGED" ]]; then
#       PROMPT_COLOR=$RED
#       STATE=""
#     elif [[ "$STATUS" =~ "$TO_BE_COMMITED" ]]; then
#       PROMPT_COLOR=$RED
#       STATE=""
#     else
#       PROMPT_COLOR=$GREEN
#       STATE=""
#     fi

#     if [[ "$STATUS" =~ "$UNTRACKED" ]]; then
#       STATE="${STATE}${YELLOW}*${NO_COLOR}"
#     fi

#     PS1="\n${RUBY_PROMPT}${YELLOW}\w\a${NO_COLOR} (${PROMPT_COLOR}${BRANCH}${NO_COLOR}${STATE}${NO_COLOR})\n\$ "
#   else
#     PS1="\n${RUBY_PROMPT}${YELLOW}\w\a${NO_COLOR}\n\$ "
#   fi
# }

# PROMPT_COMMAND=custom_prompt
