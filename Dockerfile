FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable

RUN apt-get update -y

RUN apt-get install -y --no-install-recommends postgis \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
