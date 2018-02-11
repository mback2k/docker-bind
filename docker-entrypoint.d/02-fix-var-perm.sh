#!/bin/sh
set -e

chown root:bind /var/cache/bind
chmod 0770 /var/cache/bind

chown root:bind /var/cache/bind/db.*
chmod 0640 /var/cache/bind/db.*

chown bind:bind /var/cache/bind/db.*.jnl
chmod 0644 /var/cache/bind/db.*.jnl

exit 0
