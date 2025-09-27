#!/bin/bash

start_time=$(date +%s)
sleep 10 &
end_time=$(date +%s)
totaltime=$(($end_time-$start_time))
echo "time: $totaltime "