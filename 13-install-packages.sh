#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo -e "ERROR:: $2 ... $R  Failed $N"
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

# echo "all the arguments passed $@" 
# git mysql postfix net-tools
# Package=git for the first time

for package in $@
do 
    yum list installed $package &>> $LOGFILE #check installed or not
    if [ $? -ne 0 ]  #if not installed
    then 
        yum install $package -y &>> $LOGFILE # install the package
        VALIDATE $? "installation of $package" #Validate
    else
        echo -e "$package is already installed ... $Y SKIPPING $N"
    fi

done
