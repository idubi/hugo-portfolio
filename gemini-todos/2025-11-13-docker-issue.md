# Todo

- [x] Modify `docker-compose.yml` to override the `Dockerfile`'s default command and run the Hugo development server.
- [x] Explain the changes to the user.

# Review
- Modified `docker-compose.yml` to run the Hugo development server, which fixes the issue of not being able to see the site locally. The `Dockerfile` was building a production image with Nginx, but the `docker-compose.yml` is intended for development. The change overrides the Dockerfile's command to run `hugo server` instead of Nginx.
