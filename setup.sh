#!/bin/bash

if [[ -f $HOME/.bashrc ]]; then
    cat bashrc.append >> $HOME/.bashrc
fi

if [[ ! -f $HOME/.vimrc ]]; then
    cp vimrc $HOME/.vimrc
fi

cp color.dist color
vim color
