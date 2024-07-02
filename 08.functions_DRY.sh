#!/bin/bash
userid=$(id -u)
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
yum install gitt -y
validate $? "GIT installation"

yum install java -y
validate $? "JAVA installation"

yum install net-tools -y
validate $? "NET-TOOLS installation"

yum install wget -y
validate $? "WGET installation"
