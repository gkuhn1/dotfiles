# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias vv='cd ..; cd -'

# Shortcuts
alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias d="cd ~/Dropbox"
alias p="cd ~/projetos"
alias g="git"
alias m="mate ."
alias s="subl ."
alias o="open"
alias oo="open ."

# Always use color output for `ls`
if [[ "$OSTYPE" =~ ^darwin ]]; then
  alias ls="command ls -GF"
else
  alias ls="command ls -F --color"
  export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
fi
# List all files colorized in long format
alias l="ls -GlAh"
alias ll="ls -Glh"
# List all files colorized, including dot files
alias la="ls -GA"
# List only directories
alias lsd='ls -l | grep "^d"'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get OS X Software Updates, update Homebrew itself, and upgrade installed Homebrew packages
alias update_all='sudo softwareupdate -i -a; brew update; brew upgrade'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# OS X has no `md5sum`, so use `md5` as a fallback
type -t md5sum > /dev/null || alias md5sum="md5"

# Recursively delete `.DS_Store` files
alias cleanup_dstores="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrashs="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# # Show/hide hidden files in Finder
# alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
# alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disable Spotlight
alias spotligh_off="sudo mdutil -a -i off"
# Enable Spotlight
alias spotligh_on="sudo mdutil -a -i on"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

alias qlf='qlmanage -p "$@" >& /dev/null'

# servers (homebrew)
alias start_aws='source ~/.AWS/contabil/users/g.kuhn0@gmail.com/profile.sh'
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias start_mongodb='mongod run --config /usr/local/etc/mongod.conf'
alias start_memcached='/usr/local/bin/memcached'
alias start_mysql='sudo lampp startmysql'
alias stop_mysql='sudo lampp stopmysql'
alias start_redis='redis-server /usr/local/etc/redis.conf'

# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias ga='git add '
alias gc='git commit'
alias gca='git commit -a'
alias go='git checkout '
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gfa='git fetch -p'
alias gs='git status'
alias gpom='git push origin master'
alias glom='git pull origin master'
alias grpo='git remote prune origin'
alias got='git '
alias get='git '
# Cleans all local branches except master and the current branch
alias gbDA='git branch | egrep -v "(master|\*)" | xargs git branch -D'

# rails
alias tlog='tail -f log/development.log'
alias bex="bundle exec"
alias rs='rails server thin'
alias rc='NOROUTES=True rails console'
alias rg='NOROUTES=True rails generate'
alias fs='foreman start -f Procfile.development'
alias cov='COVERAGE=true rake spec'

alias psgrep="ps aux | egrep -v egrep | egrep"
