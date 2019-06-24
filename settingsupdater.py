import configparser
import os

config = configparser.ConfigParser()

config['PLEX'] = {
	'anime_section': os.environ.get('PLEX_SECTION'),
	'authentication_method': 'direct',
	'base_url': os.environ.get('PLEX_URL'),
	'token': os.environ.get('PLEX_TOKEN'),
}

config['ANILIST'] = {
	'username': os.environ.get('ANI_USERNAME'),
	'access_token': os.environ.get('ANI_TOKEN'),
}

with open('/plexanisync/settings.ini', 'w') as configfile:
	config.write(configfile)