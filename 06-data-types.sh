#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total : $SUM"

echo "how many args passed : $#"

echo "All args passed : $@"

echo "Script Name : $0"