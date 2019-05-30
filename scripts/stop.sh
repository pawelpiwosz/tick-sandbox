#! /bin/bash
if docker-compose down; then
    echo -e '\n\n\nTICK stack is stopped\n\n\n'
    exit 0
else
    echo -e '\n\n\nTICK stack cannot be stopped!\n\n\n'
    exit 1
fi
