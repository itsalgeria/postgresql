FROM itsalgeria/postgresql:9.5geo
MAINTAINER ITsolutions.dz

RUN apt-get -y -qq install nano htop
ENV TERM xterm

ENV TZ Africa/Algiers
RUN cp /usr/share/zoneinfo/Africa/Algiers /etc/localtime
