#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date -%F-%H-%M-%S)
R="\e[31m"   # we implemented colurs
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log" # we implemented logfile

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){     # we implemented Validation
    if [ $1 -ne 0 ]
    then 
        echo "ERROR: $2... $R failed $N"
    exit 1
    else
        echo "$2 ... $G success $N"
     fi
}


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR : please run the script with the root user $N "
    exit 1 # means it is not zero, it will stop here, it won,t run whole script.
else
    echo "you are in root user mode"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $?  "Installing mysql"

yum install git -y   &>> $LOGFILE

VALIDATE $?  "installing git"

