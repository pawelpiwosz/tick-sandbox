#! /bin/bash
#
# $1 - status type
#
case $1 in
	full)
		docker-compose ps
		exit 0
		;;
	short)
		docker-compose ps --quiet
		exit 0
		;;
	list)
		docker-compose ps --services
		exit 0
		;;
	*)
		echo -e '\n\n\nUsage: make status [full|short|list]'
		exit 0
		;;
esac
