#!/bin/bash
# Simple program to help users' relink their
# scratch and work directories

export WORKDIR=/storage/work/${USER}
export SCRATCHDIR=/gpfs/scratch/${USER}

cd ${HOME}
# Start fixing work first
if [[ -d work && ! -L work ]]; then
    mv ${HOME}/work ${HOME}/not_real_work
    ln -s ${WORKDIR} ${HOME}/work
    mv ${HOME}/not_real_work ${HOME}/work
    echo -e "\nWork symlink has been fixed"
elif [ ! -L work ]; then
    ln -s ${WORKDIR} ${HOME}/work
    echo -e "\nWork symlink has been fixed"
else
    echo -e "\nNothing to do for work"
fi

# Fix scratch
if [[ -d scratch && ! -L scratch ]]; then
    mv ${HOME}/scratch ${HOME}/not_real_scratch
    ln -s ${SCRATCHDIR} ${HOME}/scratch
    mv ${HOME}/not_real_scratch ${HOME}/scratch
    echo -e "Scratch symlink has been fixed\n"
elif [ ! -L scratch ]; then
    ln -s ${SCRATCHDIR} ${HOME}/scratch
    echo -e "Scratch symlink has been fixed\n"
else
    echo -e "Nothing to do for scratch\n"
fi
