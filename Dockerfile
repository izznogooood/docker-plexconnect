FROM alpine
RUN apk -U add \
python \
py-pillow \
git \
shadow \
openssl \
&& rm -fr /var/cache/apk/*
VOLUME /PlexConnect
ADD /initPlexconnect.sh /
CMD ["/initPlexconnect.sh"]
EXPOSE 80
EXPOSE 443
EXPOSE 53
