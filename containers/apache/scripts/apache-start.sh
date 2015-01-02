#!/bin/bash
# Remount using bindfs
if [ -n "$LOCAL_UID" ] && [ -n "$LOCAL_GID" ]; then
  bindfs -u www-data -g www-data -p 0000,u=rwX:go=rD --create-for-user=${LOCAL_UID} --create-for-group=${LOCAL_GID} "/data/var/www" "/data/var/www"
fi
mkdir -p /var/lock/apache2 /data/var/log/apache2
source /etc/apache2/envvars
exec /usr/sbin/apache2ctl -D FOREGROUND
