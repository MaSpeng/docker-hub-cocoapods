FROM ruby:2.7-slim-buster

ENV COCOAPODS_VERSION 1.9.3

# Install persistant dependencies
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        curl=7.64.0-4+deb10u1 \
        gcc=4:8.3.0-1 \
        libffi-dev=3.2.1-9 \
        make=4.2.1-1.2 \
        git=1:2.20.1-2+deb10u3 \
    && apt-get clean --yes \
    && rm -rf /var/lib/apt/lists/*

# Install cocoapods
RUN gem install cocoapods --version "${COCOAPODS_VERSION}"

# Remove unrequired dependencies
RUN apt-get autoremove --purge --yes \
    && apt-get remove --purge -y \
        gcc \
        libffi-dev \
        make \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["pod"]

CMD ["--help"]
