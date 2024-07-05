#!/bin/bash
Date=$(date "%F-%H-%M-%S")
path=/home/ec2-user/dailylogs
Log-File="$Date.log"
input=$(find /home/ec2-user/dailylogs/ -type f -mtime  +14)
echo "output is :${input}"
while IFS= read line;
do
  #rm -rf  &>>$Log-File
  echo "Deleting the line: $line"  >>$Log-File
done<<<"$input"



