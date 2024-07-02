#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
   echo "You are not root user,please run the script with root user"
   exit 127
fi
echo "installing Git"

yum install git -y

if [ $? -ne 0 ]
then
  echo "Git had failed to install"
  exit 127
else
  echo "Git is Successfully installed"
fi


