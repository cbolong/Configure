#!/bin/bash

apt-get install -y samba
SMB_CONF="/etc/samba/smb.conf"
chmod 777 $SMB_CONF
echo "[public]" >> $SMB_CONF
echo "path = /home/vodka/Downloads" >> $SMB_CONF
echo "available = yes" >> $SMB_CONF
echo "browseable = yes" >> $SMB_CONF
echo "public = yes" >> $SMB_CONF
echo "writable = yes"  >> $SMB_CONF
echo "valid users = vodka"  >> $SMB_CONF

/etc/init.d/samba restart
