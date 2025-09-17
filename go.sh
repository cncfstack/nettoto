#!/bin/bash
DATE=$(date)
echo "Date=>$DATE" > .date
git add . --all && git commit -m "Date=>$DATE" && git push
ssh -N -f -g -o ServerAliveInterval=60  -L 8888:localhost:9999  aliyun2
