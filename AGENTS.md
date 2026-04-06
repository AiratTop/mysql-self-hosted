# AGENTS.md

## Purpose
Public self-hosted deployment template for standalone MySQL database.

## Repository Role
- Category: `*-self-hosted` (public GitHub repository).
- Related local stack: no dedicated `*-docker` pair in this workspace; used as a standalone public template.
- Main entrypoint: `docker-compose.yml`.

## Stack Summary
- Service: `mysql`.
- Exposed port: `3306`.
- External network: `shared_network`.

## Data and Config
- Persistent data: `./data/mysql`.
- Env-driven credentials and schema bootstrap via compose env section.

## Operations
- Restart stack: `./restart-docker.sh`.
- Update images and restart: `./update-docker.sh`.
- Backup helper: `./backup.sh`.

## AI Working Notes
- Keep passwords in `.env` (`MYSQL_ROOT_PWD`, `MYSQL_PWD`) and never commit real values.
- Preserve healthcheck command because startup gating depends on it.
- Avoid destructive changes to `./data/mysql` without explicit migration/backup plan.
