#!/bin/bash

cd ${HOME}
if [[ -d .conda && ! -L .conda ]]; then
    mv ${HOME}/.conda ${HOME}/work
    ln -s ${HOME}/work/.conda ${HOME}/.conda
elif [ -L .conda ]; then
    echo -e "\n.conda is already a symlink\n"
else
    echo -e "\n.conda does not exist in home directory"
    echo -e "Please initialize .conda\n"
fi
