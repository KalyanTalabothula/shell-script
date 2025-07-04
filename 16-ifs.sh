#!/bin/bash

FILE="/etc/passwd"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then 
    echo -e "$R source directory : $file does not exist. $N "
fi 

while IFS=":" read -r username password user_ID
do 
    echo "Username : $username"
    echo "User ID : $user_ID"
    echo "User full name: $user_fullname"
done < $file
