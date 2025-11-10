# Todo

- [x] Create Dockerfile
- [x] Create docker-compose.yml
- [x] Review and explain the files

# Review

I have created a `Dockerfile` and a `docker-compose.yml` file to containerize your Hugo application.

The `Dockerfile` builds an image that can be used to run your Hugo site. It uses the `klakegg/hugo:ext-alpine` image as a base, which is a lightweight image with the extended version of Hugo.

The `docker-compose.yml` file defines a service that uses the `Dockerfile` to build and run your application. It also mounts the current directory as a volume, which allows you to see your changes in real-time without having to rebuild the image.

To run the application, you can use the following command:

```bash
docker-compose up
```

This will start the Hugo server and you will be able to access your site at `http://localhost:1313`.
