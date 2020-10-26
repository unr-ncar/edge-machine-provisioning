#!/bin/bash
export HOST_IP=$1
export DIR=$(dirname $0)
echo ${HOST_IP}
echo $2
if [[ $2 == "windows" ]]
then
        echo "windows"
        export BASE_PATH=/c/Users/edge/Documents/infrastructure
else
	export HOST_IP=$(hostname -I | awk '{print $1}')
        export BASE_PATH=/home/edge/infrastructure
fi


docker-compose -f $DIR/docker-compose-infrastructure.yml  up -d --remove-orphans

