#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
export PATH
docker exec goaccess goaccess -a -d -f /data/logs/access.log -p /etc/goaccess/goaccess.conf -o /data/html/index.html --time-format='%H:%M:%S' --date-format='%d%b%Y' --log-format=COMBINED
