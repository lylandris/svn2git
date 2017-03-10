FROM ubuntu:latest
MAINTAINER lylandris <lylandris.jiang@gmail.com>

RUN set -xe \
    && apt-get update \
    && apt-get install -y git-core git-svn man ruby \
    && apt-get autoclean \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN set -xe \
    && git clone --depth 1 https://github.com/nirvdrum/svn2git.git \
    && cd svn2git \
    && gem install svn2git

CMD ["bash"]
