#!/bin/bash

source .env
docker-compose exec haka_db pg_dump -c -U ${DB_USER} ${DB_NAME} |  gzip --rsyncable > ./backups/hakatime.sql.gz