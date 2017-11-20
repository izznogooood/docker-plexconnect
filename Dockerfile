FROM alpine
RUN
VOLUME /PlexConnect
ADD /initPlexconnect.sh /
CMD ['/initPlexconnect.sh']
EXPOSE 80
EXPOSE 443
EXPOSE 53
