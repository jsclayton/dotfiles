#! /bin/bash
set -e
USER=$(whoami)
DOTFILESDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

linkUserConfigFiles(){
    for filename in $@
    do
        if [ ! -L "$HOME/.$filename" ]; then
            ln -siv $DOTFILESDIR/$filename $HOME/.$filename
        fi
    done
}

# Setup symlinks for user config files
files=(
    'profile'
    'gvimrc'
    'vimrc'
    #'hgrc'
    'gitconfig'
    'gitignore_global'
    'jshintrc'
    'NERDTreeBookmarks'
)

mkdir -p ~/.vim/backup
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp

if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

linkUserConfigFiles ${files[@]}

exit
