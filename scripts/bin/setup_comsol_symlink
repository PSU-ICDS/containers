#!/bin/bash

cd ${HOME}
if [[ -d .comsol && ! -L .comsol ]]; then
    mv ${HOME}/.comsol ${HOME}/work
    ln -s ${HOME}/work/.comsol ${HOME}/.comsol
elif [ -L .comsol ]; then
    echo "Symbolic link already exists!"
else
    echo ".comsol does not exist in home directory"
    echo "Please create .comsol by launching Comsol"
fi
