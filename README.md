# docker-hugo

Docker image for hugo static page generator (https://gohugo.io)

## Executing

docker run --net host --rm \
    -v "$(pwd)/src:/src" \
    -v "$(pwd)/output:/output" \
    hugo
