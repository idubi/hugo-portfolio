# Todo

- [x] Create a new, simpler `Dockerfile` that only includes Hugo.
- [x] Update `docker-compose.yml` to work with the new `Dockerfile`.
- [x] Explain the changes to the user.

# Review
- The `Dockerfile` was simplified by removing the multi-stage build and the Nginx production stage. It now directly uses the `hugomods/hugo` image and sets the `CMD` to run the Hugo development server (`hugo server --bind=0.0.0.0 --buildDrafts`).
- The `docker-compose.yml` was updated by removing the explicit `command` override, as the new `Dockerfile` now handles the Hugo server command directly. This makes the `docker-compose.yml` cleaner and relies on the `Dockerfile`'s default command.
- These changes streamline the development workflow by providing a single Docker image specifically designed for running the Hugo development server.
