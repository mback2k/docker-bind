#!/bin/sh
set -e

chown root:bind /etc/bind
chmod 0750 /etc/bind

chown root:bind /etc/bind/named.conf*
chmod 0640 /etc/bind/named.conf*
