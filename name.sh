#!/bin/bash

echo "script name: $0"
echo "current directory: $pwd"
echo "who run scriot: $user"
echo "home directory of user: $home"
echo "pdi of the script: $$"
sleep 10 &
echo "pdi of last working command in backend is: $!"
