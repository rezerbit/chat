FROM ruby:2.5.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    curl --silent --location https://deb.nodesource.com/setup_9.x | bash - && \
    apt-get install -qq -y --no-install-recommends build-essential nodejs npm && \
    npm install --global yarn
RUN mkdir -p /app
WORKDIR /app
COPY . .
ENV BUNDLE_PATH=/app/vendor/bundle \
    BUNDLE_BIN=/app/vendor/bundle/bin \
    GEM_HOME=/app/vendor/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
RUN gem update bundle || bundle check || bundle install --binstubs="$BUNDLE_BIN"
