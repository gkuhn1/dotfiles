# source $HOME/.bash_profile.d/completion/bash.sh
source $HOME/.bash_profile.d/completion/git.sh
source $HOME/.bash_profile.d/completion/gem.sh
source $HOME/.bash_profile.d/completion/ssh.sh
source $HOME/.bash_profile.d/prompt.sh
source $HOME/.bash_profile.d/aliases.sh
source $HOME/.bash_profile.d/exports.sh
source $HOME/.bash_profile.d/functions.sh
source $HOME/.bash_profile.d/settings.sh

# Stuff I don't want public avaiable
[ -r $HOME/.bash_profile_extras ] && source $HOME/.bash_profile_extras

# This loads RVM into a shell session.
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# export PATH=$PATH:$HOME/.rvm/bin

# This loads Kiex Erlang version manager
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

export PATH="$HOME/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# export NVM_DIR="$HOME/.nvm"
# test -s "/usr/local/opt/nvm/nvm.sh" && . "/usr/local/opt/nvm/nvm.sh"
