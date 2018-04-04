FROM debian:stretch-slim

ENV LANG=C.UTF-8

RUN apt-get update -qqy && DEBIAN_FRONTEND=noninteractive apt-get install -qqy --no-install-recommends \
    -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    ca-certificates \
    curl \
    git \
    python3 \
    python3-yaml \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
 && mkdir -p /work/

WORKDIR /work/
