#!/bin/bash

vim=`which vim`
if [[ ! $vim ]]; then
    echo "Let's install vim."
    sudo apt-get install vim
fi

if [[ -f $HOME/.bashrc ]]; then
    cat bashrc.append >> $HOME/.bashrc
fi

if [[ ! -f $HOME/.vimrc ]]; then
    cp vimrc $HOME/.vimrc
fi

cp color.dist color
$vim color
