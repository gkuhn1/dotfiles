# compilador para rvm
# export CC=gcc-4.2

# bug postgres + lion, ver:
#  http://joneslee85.wordpress.com/2011/10/27/fix-postgres-permission-denied-issue-on-osx-lion/
#  http://od-eon.com/blogs/calvin/os-x-lion-postgresql/
export PATH=/usr/local/bin:$PATH

# Make vim the default editor
export EDITOR="vim"
export SVN_EDITOR="vim"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
# Highlight section titles in manual pages
export LESS_TERMCAP_mb=$'\E[04;33m'
export LESS_TERMCAP_md=$'\E[04;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'

# Larger bash history (allow 32³ entries; default is 500)
# MOVED TO prompt.sh
# export HISTSIZE=32768
# export HISTFILESIZE=$HISTSIZE
# export HISTCONTROL=ignoredups
# Make some commands not show up in history
# export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

export JAVA_HOME="/Library/Java/Home"

# adjusts RUBY settings
export RUBY_GC_MALLOC_LIMIT=104857600
export RUBY_HEAP_FREE_MIN=200000
export RUBY_HEAP_MIN_SLOTS=40000

export BLUE="\[\033[0;34m\]"
export NO_COLOR="\[\e[0m\]"
export GRAY="\[\033[1;30m\]"
export GREEN="\[\033[0;32m\]"
export LIGHT_GRAY="\[\033[0;37m\]"
export LIGHT_GREEN="\[\033[1;32m\]"
export LIGHT_RED="\[\033[1;31m\]"
export RED="\[\033[0;31m\]"
export WHITE="\[\033[1;37m\]"
export YELLOW="\[\033[0;33m\]"
