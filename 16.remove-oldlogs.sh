#!/bin/bash
Date=$(date +"%F-%H-%M-%S")
Path=/home/ec2-user/dailylogs
Log_File="$Date.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
Input=$(/usr/bin/find /home/ec2-user/dailylogs/ -type f -mtime  +14)
echo -e "$G output is$N :${Input}" &>>$Log_File
while IFS= read line;
do
  /usr/bin/rm -rf  &>>$Log_File
  echo -e "$R Deleting the line:$N $line " &>>$Log_File
done<<<"$Input"



