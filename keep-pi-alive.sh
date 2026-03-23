#!/bin/bash
while true; do
    ping -c 1 -W 1000 192.168.5.1 > /dev/null 2>&1
    sleep 10
done
