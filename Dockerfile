FROM ruby:3.2-alpine

RUN apk add --no-cache git

RUN set -x \
  && gem install bundler:2.4.22 keycutter

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
