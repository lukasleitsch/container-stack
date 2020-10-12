#!/bin/bash

cd /docker/hakatime
source .env

gunzip < backups/dump.sql.gz | docker-compose exec -T db psql -U ${DB_USER}
