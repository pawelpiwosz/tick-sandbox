#! /bin/bash
#
# $1 - container name
# $2 - ssh | database selector
#
# build check if container exists
if [[ $1 == '' ]]; then
	echo -e 'Provide container name!'
	exit 1
fi

#connect
if [[ $2 == 'ssh' || $2 == '' ]]; then
	docker-compose exec $1 /bin/sh
elif [[ $2 == 'database' ]]; then
docker-compose exec $1 /usr/bin/influx
else
	echo -e '\n\n\nConnection failed!\n\n\n'
fi
