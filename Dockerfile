FROM python:latest

ENV PLEX_SECTION=Anime PLEX_URL=localhost PLEX_TOKEN=abcdefgh ANI_USERNAME=JohnDoe ANI_TOKEN=abcdefgh

RUN apt-get update \
    && apt-get install -y wget unzip

RUN wget https://github.com/RickDB/PlexAniSync/archive/master.zip &&\
            unzip master.zip &&\
            rm master.zip &&\
            mv /PlexAniSync-master /plexanisync &&\
            cd /plexanisync &&\
            pip install -r requirements.txt &&\
            cd ..

COPY ./runsync.sh / &&\
    ./settingsupdater.py /

RUN chmod +x /runsync.sh

# CMD ["/runsync.sh"]
