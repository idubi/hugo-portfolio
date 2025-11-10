FROM  hugomods/hugo:debian-nightly-non-root

WORKDIR /src

COPY . .


# Fix permissions for non-root user
USER root
RUN chown -R hugo:hugo /src
USER hugo


RUN hugo mod get -u

# Expose the Hugo server port
EXPOSE 1313

# Serve the site
CMD ["hugo", "server", "--bind=0.0.0.0", "--baseURL=http://localhost", "--appendPort=false", "--disableFastRender"]