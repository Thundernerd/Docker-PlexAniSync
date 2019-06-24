FROM python:latest

ENV PLEX_URL=localhost PLEX_TOKEN=abcdefgh ANI_USERNAME=JohnDoe ANI_TOKEN=abcdefgh

RUN  apt-get update \
  && apt-get install -y wget unzip
RUN wget https://github.com/RickDB/PlexAniSync/archive/master.zip
RUN unzip master.zip -d /plexanisync
