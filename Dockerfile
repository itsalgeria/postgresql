FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

ENV POSTGIS_VERSION=2.3

RUN apt-get upgrade -y\
        apt-get update -y\
        && apt-get install -y --no-install-recommends \
        postgis \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
