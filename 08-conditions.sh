#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ];
then
    echo "Given number $NUMBER is greater then 100 "
else 
    echo "Given number $NUMBER is not grater then 100" 
fi