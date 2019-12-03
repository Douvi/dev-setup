#!/bin/bash

# $1 - The database name. The base that will be dropped and recreated
# $2 - The path of the file with the data to be imported

set -e

if [[ -z "$1" ]]; then
    echo "Empty variable Database name!"
    exit 1
fi

if [[ -z "$2" ]]; then
    echo "Empty variable Dump file path!"
    exit 1
fi

dropdb "$1"

psql -U postgres -c "CREATE DATABASE \"${1}\" WITH OWNER = rockspoon ENCODING = 'UTF8' TABLESPACE = pg_default LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' CONNECTION LIMIT = -1;"

psql -U postgres -d "$1" -c "CREATE EXTENSION pg_trgm; CREATE EXTENSION postgis; CREATE EXTENSION fuzzystrmatch; CREATE EXTENSION postgis_tiger_geocoder;"

psql -U postgres -f "${2}" $1
