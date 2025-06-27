#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR : please run the script with the root user"
    exit 1
else
    echo "you are in root user mode"
fi

yum install mysql -y
