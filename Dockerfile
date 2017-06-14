FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

ENV POSTGIS_VERSION=2.3

RUN apt-get upgrade -y

RUN apt-get update -y

RUN apt-get install -y --no-install-recommends postgis \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
