#!/bin/sh
set -e

chown root:bind /var/cache/bind
chmod 0750 /var/cache/bind

chown root:bind /var/cache/bind/db.*
chmod 0640 /var/cache/bind/db.*
