![enter image description here](https://camo.githubusercontent.com/3e9ba499fd311db91f02459bf0ff507620ca04b9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f353530343239382f313231373733342f61326333643331362d323661652d313165332d396235322d3932373738343765326230642e706e67)


**Usage**:

    docker run -d \
    --name plexconnect \
    --network=host \
    -v /path/to/store/plexconnect:/PlexConnect \
    -e USERID=xxxx -e GROUPID=xxxx \
    izzno/plexconnect

----------

This Docker uses port: 53, 80 & 443. Make sure they are not in use.
The user/group is for file-permissions only.

----------

**Description**

This image is based on Ubuntu 16.04 and size is compromised for full functionality.
PlexConnect is stored outside the container making sure all changes including ***Plex login is persistent***.

Plexconnect is pulled each time you start securing new updates if there are any.

For how to configure you appletv please see:
https://github.com/iBaa/PlexConnect/wiki/Install-Guide-AppleTV-Wifi

Certificates are auto-generated the first time you run this docker.

----------
**Security**

NB: PlexConnect has to run as root in the container. This is because of its DNS service.

**Source**: https://github.com/izznogooood/plexconnect-docker \
**Original Project**: https://github.com/iBaa/PlexConnect
