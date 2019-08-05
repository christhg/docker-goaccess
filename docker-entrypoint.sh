#!/bin/bash
set -e

if [ "$1" = 'goaccess' ]; then
	goaccess -a -d -f /data/logs/access.log -p /etc/goaccess/goaccess.conf -o /data/html/index.html --time-format='%H:%M:%S' --date-format='%d%b%Y' --log-format=COMBINED
fi
exec "$@"
