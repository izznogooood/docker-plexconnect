FROM ubuntu:16.04
RUN apt update \
&& apt upgrade -y \
&& apt install python git -y \
&& apt clean
VOLUME /PlexConnect
ADD /initPlexconnect.sh /
EXPOSE 80
EXPOSE 443
EXPOSE 53
CMD ["./initPlexconnect.sh"]
