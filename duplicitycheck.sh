#!/bin/bash

if [[ -f "/opt/smods/dupbackup/logs/last_backup" ]]
then
	LAST_BACKUP=$(cat /opt/smods/dupbackup/logs/last_backup)
else
	LAST_BACKUP=0
fi
if [[ -f "/opt/smods/dupbackup/logs/last_full" ]]
then
	LAST_FULL=$(cat /opt/smods/dupbackup/logs/last_full)
else
	LAST_FULL=0
fi
if [[ -f "/opt/smods/dupbackup/logs/last_inc" ]]
then
	LAST_INC=$(cat /opt/smods/dupbackup/logs/last_inc)
else
	LAST_INC=0
fi

CURRENT_TIME=$(date +%s)


echo "metric since_last_backup int $(($CURRENT_TIME-$LAST_BACKUP))"
echo "metric since_last_full_backup int $(($CURRENT_TIME-$LAST_FULL))"
echo "metric since_last_inc_backup int $(($CURRENT_TIME-$LAST_INC))"
