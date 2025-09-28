#!/bin/bash

R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"
USERID=$(id -u)
if [USERID -ne 0];then
echo "need root access"
exit 1
fi
VALIDATE(){
    if [$1 -ne 0];then
    echo -e "installation of $2 ..$R is failure $N"
    exit 1
    else
    echo "installation of $2 .. $G is sucess $N"
    fi
}
dnf list install mysql
if [$? -ne 0];then
dnf install mysql -y
VALIDATE $? "mysql"
else
echo -e " mysql exist ..$y skip $N"
fi
dnf ilst install nginx
if [$? -ne 0];then
dnf install nginx -y
VALIDATE $? "nginx"
else
echo -e " nginx exist ..$y skip $N"
fi
dnf list install python3
if[ $? -ne 0];then
dnf install python3 -y
VALIDATE $? "python3"
else 
echo -e "python3 exist .. $y skip $N
fi