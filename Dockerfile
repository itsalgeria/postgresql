FROM itsalgeria/postgresql
MAINTAINER ITsolutions.dz

RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable

RUN apt-get update -y && apt-get install -y postgresql-contrib postgis postgresql-9.5-postgis-2.3 \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
