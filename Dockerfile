FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.0

RUN gem install file_monitoring --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["file_monitoring"]
CMD ["--help"]
