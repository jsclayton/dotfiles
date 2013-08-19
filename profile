#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=node_modules/.bin:/Developer/android-sdk/tools:/Developer/android-sdk/platform-tools:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/share/npm/bin:${PATH}

eval "$(rbenv init -)"

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
