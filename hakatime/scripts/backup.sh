#!/bin/bash

cd /docker/hakatime
source .env
docker-compose exec db pg_dump -c -U ${DB_USER} ${DB_NAME} |  gzip --rsyncable > ./backups/hakatime.sql.gz