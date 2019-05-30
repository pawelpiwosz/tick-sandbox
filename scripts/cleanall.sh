#! /bin/bash

docker-compose down
docker rmi influxdb:ver telegraf:ver kapacitor:ver chronograf:ver
docker rmi $(docker images -f "dangling=true" -q)
rm -rf kapacitor/data influxdb/data chronograf/data
echo -e '\n\n\nAll data cleaned up!\n\n\n'
