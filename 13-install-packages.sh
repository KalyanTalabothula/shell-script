#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR: please run the script with root accuss $N"
    exit 1
else 
    echo "you are root user"
fi 

echo "all the arguments passed $@" 