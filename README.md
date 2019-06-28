# Docker-PlexAniSync

<div align="center">
  
  ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chrus/plexanisync.svg)

</div>

A dockerized version of [PlexAniSync](https://github.com/RickDB/PlexAniSync) 


# Environment
| ID 	| Default 	| Note 	|
|--------------	|-----------	|---------------------------------------------------------------------------------------------------------------	|
| PLEX_SECTION 	| Anime 	| The library where your anime resides 	|
| PLEX_URL 	| localhost 	| The address to your Plex 	|
| PLEX_TOKEN 	| - 	| Follow [this guide](https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/) 	|
| ANI_USERNAME 	| - 	| Your [anilist](http://www.anilist.co) username 	|
| ANI_TOKEN 	| - 	| Get it [here](https://anilist.co/api/v2/oauth/authorize?client_id=1549&response_type=token) 	|
| INTERVAL 	| 3600 	| The time in between syncs 	|
