#!/bin/bash
# Configure USER/GROUP
useradd -m $USERID -u $USERID
groupadd $GROUPID
#If this is the first time you run the docker, clone (get) PlexConnect, else update
if [ ! -f /PlexConnect/ATVSettings.cfg ];
    then
        cd /
        git clone https://github.com/izznogooood/PlexConnect.git
    else
        cd /PlexConnect
        git pull
fi
#If this is the first time, generate certificates
if [ ! -f /PlexConnect/assets/certificates/trailers.pem ];
    then
        openssl req -new -nodes -newkey rsa:2048 -out ./trailers.pem -keyout ./trailers.key -x509 -days 7300 -subj "/C=US/CN=trailers.apple.com"
        openssl x509 -in ./trailers.pem -outform der -out ./trailers.cer && cat ./trailers.key >> ./trailers.pem
        mv trailers.* /PlexConnect/assets/certificates
fi
#Change Plexconnect owner
chown -R $USERID:$GROUPID /PlexConnect
#Start PlexConnect
python /PlexConnect/PlexConnect.py
