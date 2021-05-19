#!/bin/bash

PORT=65530 
PORT1=7777
PORT2=1996

for ((i=1;i<=1000;i++))
do
    curl -s "http://10.0.0.173:$PORT?[1-1000]" &
    curl -s "http://10.0.0.173:$PORT1?[1-1000]" &
    curl -s "http://10.0.0.173:$PORT2?[1-1000]" &
    sleep 0.5
done
