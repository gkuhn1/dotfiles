if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

[ -n "$PS1" ] && source ~/.bash_profile

cd .
