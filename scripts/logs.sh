#! /bin/bash
#
# $1 - container name
# $2 - if 'cont' is provided, use '-f' parameter
#
if [[ $1 == '' ]]; then
	echo -e 'Provide container name!'
	exit 1
fi

#connect
if [[ $2 == 'cont' ]]; then
	docker-compose logs -f $1
else
	docker-compose logs $1
fi
