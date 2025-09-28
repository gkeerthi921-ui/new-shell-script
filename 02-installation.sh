#!/bin/bash

USERID=$(id -u)
if  [ "$USERID" -ne 0 ];then
echo "need root access"
exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ];then
    echo "installation of $2 is failure"
    exit 1
    else
    echo "installation of $2 is sucess"
    fi
}
dnf install mysql -y
VALIDATE $? "mysql"
dnf install nginx -y
VALIDATE $? "nginx"
dnf install python3 -y
VALIDATE $? "python3"