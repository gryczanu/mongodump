#!/bin/bash

set -e

echo "creating backup: $(date)"

echo "Job started: $(date)"
DATABASE_HOST=${DATABASE_HOST:-localhost}
DB_PORT=${DB_PORT:-27017}

DATE=$(date +%Y%m%d_%H%M%S)
FILE="/home/urszula/test/Mongo/backup-$DATE.tar.gz"

mongodump --host $DATABASE_HOST:$DB_PORT --gzip --archive=$FILE

echo "backup created: $(date)"
