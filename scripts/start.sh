#! /bin/bash
if docker-compose up -d; then
    echo -e '\n\n\nTICK stack is running\n\n\n'
    exit 0
else
    echo -e '\n\n\nTICK stack creation failed!\n\n\n'
    exit 1
fi
