#!/bin/bash

date

# Exit immediately if a command exits with a non-zero status.
set -e

source .env

BACKUP_DIR="backups"
mkdir -p "${BACKUP_DIR}"

# Dump the MySQL database and compress it.
docker compose exec -T mysql mysqldump --no-tablespaces -u "${MYSQL_USER}" -p"${MYSQL_PWD}" "${MYSQL_DB}" 2>/dev/null | gzip > "${BACKUP_DIR}/mysql_${MYSQL_DB}_$(date +%F_%H-%M-%S).sql.gz"
