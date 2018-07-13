FROM ruby:2.5-slim-stretch

ENV COCOAPODS_VERSION 1.5.3

# Install persistant dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git=1:2.11.0-3+deb9u3 \
        curl=7.52.1-5+deb9u6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install cocoapods --version "${COCOAPODS_VERSION}"

ENTRYPOINT ["pod"]

CMD ["--help"]
