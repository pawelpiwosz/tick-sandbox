#! /bin/sh

while true
do
  /usr/bin/ab -n 1000 -c 10 -v 2 http://haproxy-nginx/
done
