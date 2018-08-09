FROM ruby:2.5-slim-stretch

ENV COCOAPODS_VERSION 1.5.3

# Install persistant dependencies
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        git=1:2.11.0-3+deb9u3 \
        curl=7.52.1-5+deb9u6 \
    && apt-get clean --yes \
    && rm -rf /var/lib/apt/lists/*

# Install cocoapods
RUN gem install cocoapods --version "${COCOAPODS_VERSION}"

# Remove unrequired dependencies
RUN apt-get autoremove --purge --yes

ENTRYPOINT ["pod"]

CMD ["--help"]
