#!/bin/bash
userid=$(id -u)
Date=$(date +"%F-%H-%M-%S")
Log_File="$Date.log"
if [ $userid -ne 0 ]
then
   echo "You are not root user,please run the script with root user"
   exit 127
fi
validate(){
   if [ $1 -ne 0 ]
  then
    echo "$2 ..is FAILED "
    exit 127
  else
    echo "$2 ..is SUCCESS "
   fi
          }
yum remove git -y &>>$Log_File
validate $? "GIT installation"

yum remove java -y &>>$Log_File
validate $? "JAVA installation"

yum remove net-tools -y &>>$Log_File
validate $? "NET-TOOLS installation"

yum remove wget -y &>>$Log_File
validate $? "WGET installation"