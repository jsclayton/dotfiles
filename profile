#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=node_modules/.bin:/Applications/Postgres93.app/Contents/MacOS/bin:/usr/local/share/npm/bin:/Applications/Android\ Studio.app/sdk/tools:/Applications/Android\ Studio.app/sdk/platform-tools:${PATH}

eval "$(rbenv init -)"
. ~/.nvm/nvm.sh

# bash completion helper (see: http://bash-completion.alioth.debian.org/ )
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
