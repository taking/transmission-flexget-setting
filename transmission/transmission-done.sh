#!/bin/sh
SERVER="9091 -n TORRENT아이디:TORRENT비밀번호"
TORRENTLIST=`transmission-remote $SERVER --list | sed -e '1d;$d;s/^ *//' | awk '{print $1}'`
for TORRENTID in $TORRENTLIST
do
    DL_COMPLETED=`transmission-remote $SERVER --torrent $TORRENTID --info | grep "Percent Done: 100%"`
    STATE_STOPPED=`transmission-remote $SERVER --torrent $TORRENTID --info | grep "State: Seeding\|Stopped\|Finished\|Idle"`
    if [ "$DL_COMPLETED" ] && [ "$STATE_STOPPED" ]; then
		echo "Torrent #$TORRENTID is completed."
		echo "Removing torrent from list."
        transmission-remote $SERVER --torrent $TORRENTID --remove
    fi
#flexget execute --tasks sort
done
