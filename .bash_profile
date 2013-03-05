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
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:$HOME/.rvm/bin

export PATH="$HOME/bin:$PATH"
