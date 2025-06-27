#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR : please run the script with the root user"
    exit 1 # means it is not zero, it will stop here, it won,t run whole script.
else
    echo "you are in root user mode"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR: Installing Mysql is failed"
    exit 1
else
    echo "Installing Mysql is success"
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "ERROR: Installing git is failed"
    exit 1
else
    echo "Installing git is success"
fi