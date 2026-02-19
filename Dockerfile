# Dockerfile for KMS Server
# Copyright (C) 2018 - 2020 xzl2021 <xzl2021#hotmail.com>
# Reference URL:
# https://github.com/Wind4/vlmcsd

FROM alpine:latest
LABEL maintainer="xzl2021 <xzl2021#hotmail.com>"

WORKDIR /
RUN cd /tmp \
    && wget --no-check-certificate https://github.com/Wind4/vlmcsd/releases/download/svn1113/binaries.tar.gz \
    && tar zxvf binaries.tar.gz \
    && cp /tmp/binaries/Linux/intel/musl/vlmcsd-x64-musl /usr/local/bin/vlmcsd \
    && chmod +x /usr/local/bin/vlmcsd \
    && rm -rf /tmp/*

EXPOSE 1688
CMD [ "vlmcsd", "-D", "-e", "-v" ]
