FROM phusion/baseimage:latest
CMD ["/sbin/my_init"]
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install python git python-pil -y \
&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME /PlexConnect
RUN mkdir /etc/service/plexconnect
ADD run /etc/service/plexconnect/
ADD /initPlexconnect.sh /
EXPOSE 80
EXPOSE 443
EXPOSE 53
