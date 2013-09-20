#!/bin/bash

if [[ -f $HOME/.bashrc ]]; then
    cat bashrc.append >> $HOME/.bashrc
fi

cp color.dist color
vim color
