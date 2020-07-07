#!/bin/bash
read -p "Enter the Username:" USER_NAME
SPEC='!@#$%^&*()_'
SPECCHAR=$(echo ${SPEC} | fold -w1 | shuf | head -1)
PASSWORD=${RANDOM}$(date +%s%N)${SPECCHAR}
useradd -m ${USER_NAME}
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
echo "Sucessfully Created user ${USER_NAME} with password as ${PASSWORD}"
echo "Script executed"
#Gives users in the system
USERS=$(cat /etc/passwd | cut -d ":" -f 1)
echo $USERS
echo $PATH  