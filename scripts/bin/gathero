#!/bin/bash
# gathero <job_ib>
JOB_ID=$1

# Create temp dir that we are going to use to store info
# that we have collected before slapping into a tar archive
mkdir -p ${HOME}/scratch/${JOB_ID}_info
ROOT_DIR=${HOME}/scratch/${JOB_ID}_info

# Use checkjob to get basic input
echo "Using checkjob on ${JOB_ID}"
sudo `which checkjob` -v ${JOB_ID} --timeout=300 > ${ROOT_DIR}/checkjob_output.txt

# Extract data from checkjob_output.txt insert it
# into a dummy file stored in /tmp
echo "Getting user id and allocation of ${JOB_IB}"
cat ${ROOT_DIR}/checkjob_output.txt | awk '/Creds:*/' > /tmp/${JOB_ID}_tmp.txt

# Use python scripts to retreive user id and allocation name
PYTHON_EXEC=`which python3`
UTIL_PATH=/gpfs/group/dml129/default/sw/scripts/utils
USER_ID=`${PYTHON_EXEC} ${UTIL_PATH}/gathero_user.py -f /tmp/${JOB_ID}_tmp.txt`
ALLOC_ID=`${PYTHON_EXEC} ${UTIL_PATH}/gathero_alloc.py -f /tmp/${JOB_ID}_tmp.txt`

# Gather neccessary info on user
echo "Gathering info on ${USER_ID}"
echo -e "accout_quota_check ${USER_ID}\n" >> ${ROOT_DIR}/user_info.txt
account_quota_check ${USER_ID} >> ${ROOT_DIR}/user_info.txt
echo -e "\nqstat -u ${USER_ID} -n\n" >> ${ROOT_DIR}/user_info.txt
qstat -u ${USER_ID} -n >> ${ROOT_DIR}/user_info.txt
echo -e "\nmam-list-accounts -u ${USER_ID}\n"
sudo `which mam-list-accounts` -u ${USER_ID} >> ${ROOT_DIR}/user_info.txt

# Gather neccessary info on allocation
echo "Gathering info on ${ALLOC_ID}"
echo -e "showq -w acct=${ALLOC_ID}\n" >> ${ROOT_DIR}/allocation_info.txt
showq -w acct=${ALLOC_ID}
echo -e "\nmam-list-funds -u ${USER_ID} -h\n" >> ${ROOT_DIR}/allocation_info.txt
sudo `which mam-list-funds` -u ${USER_ID} -h >> ${ROOT_DIR}/allocation_info.txt

# Put the files together for fast read if need be
echo -e "checkjob -v ${JOB_ID} --timeout=300\n" >> ${ROOT_DIR}/all_info.txt
cat ${ROOT_DIR}/checkjob_output.txt >> ${ROOT_DIR}/all_info.txt
echo -e "\n" >> ${ROOT_DIR}/all_info.txt
cat ${ROOT_DIR}/user_info.txt >> ${ROOT_DIR}/all_info.txt
echo -e "\n" >> ${ROOT_DIR}/all_info.txt
cat ${ROOT_DIR}/allocation_info.txt >> ${ROOT_DIR}/all_info.txt

# Create zip file that can be sent to the user 
# (Going to assume that the general majority is on Windows)
echo "Creating zip archive"
`which zip` -r ${HOME}/scratch/${JOB_ID}_info.zip ${ROOT_DIR}
mv ${HOME}/scratch/${JOB_ID}_info.zip ${ROOT_DIR}
