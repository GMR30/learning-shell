#!/bin/bash
Date=$(date "%F-%H-%M-%S")
Path=/home/ec2-user/dailylogs
Log_File="$Date.log"
Input=$(find /home/ec2-user/dailylogs/ -type f -mtime  +14)
echo "output is :${Input}"
while IFS= read line;
do
  #rm -rf  &>>$Log-File
  echo "Deleting the line: $line"  >>$Log_File
done<<<"$Input"



