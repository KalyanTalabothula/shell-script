#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo -e "$R ERROR:: $2 ... $R  Failed $N"
        exit 1
    else 
        echo -e " $2 ... $G Success $N"
    fi
}



if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR: please run the script with root accuss $N"
    exit 1
else 
    echo "you are root user"
fi 

echo "all the arguments passed $@" 