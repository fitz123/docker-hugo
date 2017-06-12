FROM alpine:latest
MAINTAINER Anton Lugovoi a_lugovoi@gcore.lu

ENV HUGO_VERSION=0.22

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp
RUN tar -xf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C /tmp \
    && mkdir -p /usr/local/sbin \
    && mv /tmp/hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/sbin/hugo \
    && rm -rf /tmp/hugo_${HUGO_VERSION}_linux_amd64

VOLUME /src
VOLUME /output

WORKDIR /src
ENTRYPOINT ["hugo","--source=/src","--destination=/output"]
