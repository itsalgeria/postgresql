FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

ENV POSTGIS_VERSION=2.3

RUN set -x; \
        apt-get update \
        && apt-get install -y --no-install-recommends \
        postgis \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
