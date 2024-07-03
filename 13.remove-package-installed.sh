#!/bin/bash
userid=$(id -u)
Date=$(date +"%F-%H-%M-%S")
Log_File="$Date.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
#To check user is root or not
if [ $userid -ne 0 ]
then
   echo "You are not root user,please run the script with root user"
   exit 127
fi

#this is generic we need to pass the arguments.

validate(){
   if [ $1 -ne 0 ]
      then
        echo -e "$2 ..is $R FAILED $N  "
        exit 127
      else
        echo -e  "$2 ..is $G SUCCESS $N "
   fi
          }
for Package in $@  #required packages you can to the input
  do
    yum -q list installed $Package &>/dev/nell
        if [ $? -eq 0 ]
          then
             echo -e "$Package $R INSTALLED $N  "
             yum remove $Package -y &>>$Log_File
             validate $? "$Package UN-installation"
          else
             echo -e  "$Package $Y UN-INSTALLED already $N "
        fi
  done