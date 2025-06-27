#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo "ERROR: Installing  is failed"
    exit 1
    else
        echo "Installing  is success"
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

VALIDATE

yum install git -y

VALIDATE

