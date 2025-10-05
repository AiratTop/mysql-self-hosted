# MySQL Self-Hosted with Docker

This repository provides a `docker compose` setup for running a self-hosted MySQL server.

It is pre-configured to join a shared Docker network, which simplifies connecting to other services like [n8n](https://github.com/AiratTop/n8n-self-hosted).

## Features

-   Uses the official MySQL Docker image.
-   Persists data in a local volume.
-   Configured for a shared network for easy integration.
-   Includes scripts for easy management.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/AiratTop/mysql-self-hosted.git
    cd mysql-self-hosted
    ```

2.  **Create the shared network:**
    If it doesn't exist yet, create the shared Docker network:
    ```bash
    docker network create shared_network
    ```

3.  **Configure environment variables:**
    Update a `.env` file and specify your database credentials.

4.  **Start the service:**
    ```bash
    docker compose up -d
    ```

## Usage

-   **Start:** `docker compose up -d`
-   **Restart:** `./restart-docker.sh`
-   **Update:** `./update-docker.sh` (Pulls the latest image and restarts)

## Connecting with n8n

This setup is designed to work with the [n8n-self-hosted](https://github.com/AiratTop/n8n-self-hosted) configuration. Since both services are on the `shared_network`, you can connect to MySQL from n8n using `mysql` as the host on port `3306`.

## See Also

Check out other self-hosted solutions:

-   [postgresql-self-hosted](https://github.com/AiratTop/postgresql-self-hosted)
-   [mysql-self-hosted](https://github.com/AiratTop/mysql-self-hosted)
-   [clickhouse-self-hosted](https://github.com/AiratTop/clickhouse-self-hosted)
-   [qdrant-self-hosted](https://github.com/AiratTop/qdrant-self-hosted)
-   [redis-self-hosted](https://github.com/AiratTop/redis-self-hosted)
-   [n8n-self-hosted](https://github.com/AiratTop/n8n-self-hosted)
-   [caddy-self-hosted](https://github.com/AiratTop/caddy-self-hosted)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author

**Airat Halitov**

- Website: [airat.top](https://airat.top)
- GitHub: [@AiratTop](https://github.com/AiratTop)
- Repository: [mysql-self-hosted](https://github.com/AiratTop/mysql-self-hosted)
