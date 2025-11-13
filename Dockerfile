FROM hugomods/hugo:debian-nightly-non-root

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

USER hugo

EXPOSE 1313

CMD ["hugo", "server", "--bind=0.0.0.0", "--buildDrafts"]