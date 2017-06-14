FROM itsalgeria/postgresql
MAINTAINER m.benyoub@itsolutions.dz

#RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable
RUN apt-get update -y && apt-get install -y postgresql postgresql-contrib 

RUN apt-get install -y postgis postgresql-9.5-postgis-2.3 \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
