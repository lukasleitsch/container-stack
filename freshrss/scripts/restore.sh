#!/bin/bash

cd /docker/freshrss
source .env
export PGPASSWORD="$DB_PASSWORD"
export PGUSER="$DB_USER"

cat backups/freshrss_backup.sql | docker-compose exec -T db psql
