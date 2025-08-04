#!/bin/bash
DATE=$(date)
echo "Date=>$DATE" > .date
git add . --all && git commit -m "Date=>$DATE" && git push
sshgogogo
