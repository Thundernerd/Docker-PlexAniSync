#!/bin/bash
echo "Updating settings.ini"
python settingsupdater.py

if [ ! -z "${CUSTOM_MAPPING_URL}" ]
then
  wget -P /plexanisync -O custom_mappings.ini ${CUSTOM_MAPPING_URL}
fi

while true
do
  now=$(date +"%T")
  echo "Executing sync at time : $now"
  (cd /plexanisync && python PlexAniSync.py)
  sleep ${INTERVAL}
done
