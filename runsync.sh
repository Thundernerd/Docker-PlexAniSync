#!/bin/bash
echo "Updating settings.ini"
python settingsupdater.py
echo "Executing sync"
python /plexanisync/PlexAniSync.py