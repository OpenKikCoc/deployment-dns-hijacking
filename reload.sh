#!/bin/bash

id=`docker ps -a | grep 'dns-hijacking-nginx' | awk '{print $1}'`

if [ -z "$id" ]  
then  
    echo "Error: nginx docker do not exist!"
else
    echo "Send reload to " $id
    docker exec -i $id nginx -s reload
fi

echo "Bye."