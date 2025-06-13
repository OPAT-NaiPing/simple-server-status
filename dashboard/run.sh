#!/bin/bash

dirName="/root/soft/dashboard/dashboard"
logName="log.txt"
time=$(date "+%Y%m%d%H%M%S")

echo "chmod.."
chmod 777 $dirName
sudo mv $logName ./log/$time"_"$logName
PID=`ps -ef | grep dashboard | grep -v grep | awk '{print $2}'`
if [[ "" != "$PID" ]]; then
echo "killing $PID"
kill -9 $PID
fi
echo "run tast.."
sleep 2
nohup $dirName > $logName 2>&1 &