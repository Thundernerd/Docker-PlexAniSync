#!/bin/bash
echo "Updating settings.ini"
python settingsupdater.py
echo "Executing sync"
(cd /plexanisync && python PlexAniSync.py)
