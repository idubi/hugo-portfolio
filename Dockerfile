FROM hugomods/hugo:debian-nightly-non-root AS builder

WORKDIR /src
COPY . .

# install Go + Node only for the build stage
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends golang-go nodejs npm && \
    chown -R hugo:hugo /src


# get hugo modules
RUN hugo mod clean && hugo mod get -u && hugo mod tidy

# install npm deps required by Toha (bootstrap, fontawesome, etc.)
RUN npm install \
    bootstrap \
    @fortawesome/fontawesome-free \
    feather-icons \
    mermaid \
    katex \
    highlight.js \
    plyr \
    ityped \
    imagesloaded \
    fuse.js \
    mark.js \
    filterizr

# build the site
RUN hugo --minify

USER hugo

# --- production image ---
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]