#! /bin/bash

docker-compose down
docker rmi influxdb1:ver influxdb2:ver telegraf:ver kapacitor:ver chronograf:ver relay1:ver relay2:ver
docker rmi $(docker images -f "dangling=true" -q)
rm -rf kapacitor/data influxdb/data chronograf/data
echo -e '\n\n\nAll data cleaned up!\n\n\n'
