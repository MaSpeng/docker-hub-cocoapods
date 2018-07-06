FROM ruby:2.5-slim-stretch

ENV COCOAPODS_VERSION 1.5.3

RUN apt-get update \
    && apt-get install -y \
        git \
        curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install cocoapods --version "${COCOAPODS_VERSION}"

ENTRYPOINT [ "pod" ]

CMD [ "--help" ]
