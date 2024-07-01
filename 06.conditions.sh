#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then
  echo "user has root access"
else
  echo "User has not root privileges"
  exit 127
fi
echo "Installing java"
yum install java -y
if [$? -eq 0]
then
  echo "successfully installed java application."
else
  echo "We are NOT installed the requested Java application."
  exit 127
fi
