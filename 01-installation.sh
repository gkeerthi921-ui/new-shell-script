#!/bin/bash

USERID=$(id -u)
if [ "$USERID" -ne 0 ];then
echo "need root access"
exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ];then
echo "installation failed"
exit 1
else 
echo "sucess"
fi
