ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION

ENV LANG C.UTF-8

ENV BASE_PACKAGES="alpine-sdk build-base tzdata" \
    FAVORITE_PACKAGE="less"
RUN apk update && \
    apk upgrade && \
    apk --update --no-cache add \
        ${BASE_PACKAGES} \
        ${FAVORITE_PACKAGE}

ARG BUNDLER_VERSION
RUN gem update --system && \
    gem install bundler:$BUNDLER_VERSION

WORKDIR /app
