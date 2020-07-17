#!/bin/bash
# A simple script that collects info on a users home directory
# Gather .bashrc, .bash_history, .bash_profile, .bash_aliases, directory size, etc.

cd ${HOME}
# make a ${TEMP} dir to gather the files
export TEMP=${USER}_info
echo "Creating temporary directory ${TEMP}"
mkdir ${TEMP}

# Collect .bashrc
if [ -f ${HOME}/.bashrc ]; then
    echo "Collecting .bashrc file"
    cat .bashrc > ${TEMP}/${USER}_bashrc.txt
fi

# Collect .bash_history
if [ -f ${HOME}/.bash_history ]; then
    echo "Collecting .bash_history file"
    cat .bash_history > ${TEMP}/${USER}_bash_history.txt
fi

# Collect .bash_profile
if [ -f ${HOME}/.bash_profile ]; then
    echo "Collecting .bash_profile file"
    cat .bash_profile > ${TEMP}/${USER}_bash_profile.txt
fi

# Collect .bash_logout
if [ -f ${HOME}/.bash_logout ]; then
    echo "Collecting .bash_logout file"
    cat .bash_logout > ${TEMP}/${USER}_bash_logout.txt
fi

# Collect .bash_aliases
if [ -f ${HOME}/.bash_aliases ]; then
    echo "Collecting .bash_aliases file"
    cat .bash_aliases > ${TEMP}/${USER}_bash_aliases.txt
fi

# Gather directory size
echo "Collecting info on home directory"
echo "check_aci_storage_quota" >> ${TEMP}/${USER}_dir_size.txt
check_aci_storage_quota >> ${TEMP}/${USER}_dir_size.txt
echo -e "\n" >> ${TEMP}/${USER}_dir_size.txt
echo "ls -lha" >> ${TEMP}/${USER}_dir_size.txt
echo -e "\n" >> ${TEMP}/${USER}_dir_size.txt
ls -lha >> ${TEMP}/${USER}_dir_size.txt
echo -e "\n" >> ${TEMP}/${USER}_dir_size.txt
echo "du -h --max-depth=1" >> ${TEMP}/${USER}_dir_size.txt
du -h --max-depth=1 >> ${TEMP}/${USER}_dir_size.txt

# Combine them all together for kids in a hurry
if [ -f ${TEMP}/${USER}_bashrc.txt ]; then
    echo -e ".bashrc\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_bashrc.txt >> ${TEMP}/${USER}_all_info.txt
fi

if [ -f ${TEMP}/${USER}_bash_history.txt ]; then
    echo -e "\n.bash_history\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_bash_history.txt >> ${TEMP}/${USER}_all_info.txt
fi

if [ -f ${TEMP}/${USER}_bash_profile.txt ]; then
    echo -e "\n.bash_profile\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_bash_profile.txt >> ${TEMP}/${USER}_all_info.txt
fi

if [ -f ${TEMP}/${USER}_bash_logout.txt ]; then
    echo -e "\n.bash_logout\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_bash_logout.txt >> ${TEMP}/${USER}_all_info.txt
fi

if [ -f ${TEMP}/${USER}_bash_aliases.txt ]; then
    echo -e "\n.bash_aliases\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_bash_aliases.txt >> ${TEMP}/${USER}_all_info.txt
fi

if [ -f ${TEMP}/${USER}_dir_size.txt ]; then
    echo -e "\ndir_size\n" >> ${TEMP}/${USER}_all_info.txt
    cat ${TEMP}/${USER}_dir_size.txt >> ${TEMP}/${USER}_all_info.txt
fi

# Create tar archive from ${TEMP}
echo "Creating tar archive"
tar -czf ${TEMP}.tar.gz ${TEMP}

# Clean up
echo "Cleaning up!"
rm -rf ${TEMP}

echo -e "\nPlease go to Files > Home Directory from"
echo -e "https://portal.aci.ics.psu.edu/ and download"
echo -e "the created tar file, and mail it to iask@ics.psu.edu\n"
