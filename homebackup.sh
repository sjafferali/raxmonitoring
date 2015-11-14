#!bin/bash

if [[ -f /opt/smods/backupdir/last_backup_return ]]
then
	return_code=`cat /opt/smods/backupdir/last_backup_return`
	echo "metric backup_status int $return_code"
else
        echo "metric backup_status int 577"
fi
