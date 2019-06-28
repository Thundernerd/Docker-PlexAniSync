#!/bin/bash
echo "Updating settings.ini"
python settingsupdater.py

while true
do
  echo "Executing sync at time : $now"
  (cd /plexanisync && python PlexAniSync.py)
  sleep 10
done

echo "Executing sync"
(cd /plexanisync && python PlexAniSync.py)
