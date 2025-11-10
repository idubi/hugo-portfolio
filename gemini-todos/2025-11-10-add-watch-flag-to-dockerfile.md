# Todo

- [x] Modify Dockerfile to include --watch flag
- [x] Review and explain the changes

# Review

I have modified the `Dockerfile` to include the `--watch` flag in the `CMD` instruction. This ensures that the Hugo server will watch for file changes and provide live reloading, even when the Docker image is run directly without `docker-compose`.
