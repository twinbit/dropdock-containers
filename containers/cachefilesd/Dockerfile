FROM ubuntu:14.04
MAINTAINER Paolo Mainardi "paolo@twinbit.it"
ENV REFRESHED_AT 2015-03-19
RUN apt-get update && apt-get -y install cachefilesd
CMD /sbin/cachefilesd -n -f /etc/cachefilesd.conf -s
