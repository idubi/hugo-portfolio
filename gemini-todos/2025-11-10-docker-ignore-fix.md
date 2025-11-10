# Todo

- [x] Create .dockerignore file
- [x] Add node_modules to .dockerignore
- [x] Add other unnecessary files to .dockerignore
- [x] Review and explain the changes

# Review

I have created a `.dockerignore` file to exclude unnecessary files and directories from the Docker build context. This should resolve the issue with the `docker build` command failing.

By ignoring files like `node_modules`, the build process will be faster and the resulting Docker image will be smaller.

You can now try running the `docker build .` or `docker-compose up --build` command again.
