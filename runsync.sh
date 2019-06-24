#!/bin/sh
echo "Updating settings.ini"
py settingsupdater.py
echo "Executing sync"
py /plexanisync/PlexAniSync.py
