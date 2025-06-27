#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "ERROR: $2... failed"
    exit 1
    else
        echo "$2 ... success"
     fi
}


if [ $ID -ne 0 ]
then 
    echo "ERROR : please run the script with the root user"
    exit 1 # means it is not zero, it will stop here, it won,t run whole script.
else
    echo "you are in root user mode"
fi

yum install mysql -y

VALIDATE $? echo "Installing mysql"

yum install git -y

VALIDATE $? echo "installing git"

