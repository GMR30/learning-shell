#!/bin/bash
Name=Rajabhushanam
echo "My name is $Name"
echo "My name is ${Name}"

DATE=$(date +%F)
echo "Hello todaY'S date is $DATE"

#passing variable
Name=$1
Welcome=$2
echo "Hello$1,$2"