#!/bin/bash
Date=$(date "%F-%H-%M-%S")
Path=/home/ec2-user/dailylogs
Log_File="$Date.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
Input=$(find /home/ec2-user/dailylogs/ -type f -mtime  +14)
echo "$G output is$N :${Input}"
while IFS= read line;
do
  #rm -rf  &>>$Log-File
  echo -e "$R Deleting the line: $line $N"  &>>$Log_File
done<<<"$Input"



