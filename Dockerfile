FROM alpine
RUN apk -U add \
python \
py-pillow \
git \
shadow \
openssl \
bash \
&& rm -fr /var/cache/apk/*
VOLUME /PlexConnect
ADD /init /
CMD ["/initPlexconnect.sh"]
EXPOSE 80
EXPOSE 443
EXPOSE 53
