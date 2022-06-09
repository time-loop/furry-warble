#!/usr/bin/env bash
set -euxo pipefail

# user/password DEV ONLY!!!
USER=dev
PASSWORD=swordfish123
CRYPTED="$(echo "$PASSWORD" | openssl passwd -apr1 -stdin)"

echo "${USER}:$CRYPTED" > /etc/nginx/.htpasswd

exec nginx
