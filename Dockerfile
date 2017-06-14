FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

ENV POSTGIS_VERSION=2.3

RUN apt-get update && apt-get install --no-install-recommends -y apt-get install postgis
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
