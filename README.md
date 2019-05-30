## Synopsis

Create TICK sandbox for testing MEAL  
__M__ monitoring  
__E__ events  
__A__ alerts  
__L__ logs  

## Manual run

In order to run the environment, execute  
`docker-compose up -d --build`

Run environment __without__ ab containers  
`docker-compose up -d --build --scale ab=0`

Delete the environment  
`docker-compose down`

Delete and clean the environment  
```
docker-compose down
docker rmi influxdb:ver telegraf:ver kapacitor:ver chronograf:ver
docker rmi $(docker images -f "dangling=true" -q)
rm -rf kapacitor/data influxdb/data chronograf/data
```

Enter to the influxdb database  
`docker-compose exec influxdb /usr/bin/influx`

Enter to the instances command line  
`docker-compose exec <name> /bin/bash`

Logs from instances  
`docker-compose logs -f <name>`

## Scale ab containers

To scale load containers run  
`docker-compose scale ab=X`  
where X is number of containers running ab test tool.

## Database configuration

After create, this environment needs to be configured a little bit more.
In basic configuration all metrics are stored in `telegraf` database. This is
good for start, but in real environment in not recommended. That is why it should
be reconfigured.

```
create database nginx  
create database haproxy
```

## HAProxy monitoring

The stack contains two HAProxy installations:
* http://localhost:9980 (with stats on http://localhost:9981)
    Proxy for Nginx servers
* http://localhost:9990 (with stats on http://localhost:9991)
    Proxy for Relay servers
