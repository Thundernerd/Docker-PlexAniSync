FROM ubuntu:latest

ENV PLEX_SECTION=Anime PLEX_URL=localhost PLEX_TOKEN=abcdefgh ANI_USERNAME=JohnDoe ANI_TOKEN=abcdefgh

ENV PATH="${PATH}:~/.local/bin"

RUN apt-get update &&\
    apt-get install -y wget unzip cron python3 python3-pip **\
    python3 -m pip install --upgrade setuptools &&\
    python3 -m pip install --upgrade pip &&\
    wget https://github.com/RickDB/PlexAniSync/archive/master.zip &&\
    unzip master.zip &&\
    rm master.zip &&\
    mv /PlexAniSync-master /plexanisync &&\
    cd /plexanisync &&\
    python3 -m pip install -r requirements.txt &&\
    cd ..

COPY runsync.sh settingsupdater.py ./

RUN chmod +x /runsync.sh

#CMD ["/runsync.sh"]
