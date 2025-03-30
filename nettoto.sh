#!/bin/bash

chmod 400 ./id_rsa_m1

docker run -itd --name squid  -v "`pwd`/squid.conf:/etc/squid/squid.conf" -p 3128:3128  docker.io/ubuntu/squid

ssh  -i ./id_rsa_m1  -N -f -g -o ServerAliveInterval=60 -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -R 3128:localhost:3128  root@60.204.247.75

for i in `seq 7200`
do
    echo $i
    sleep 1
done

docker stop squid
docker rm squid

ps aux |grep ssh|awk '{print $2}'|xargs  kill -9

exit 0
