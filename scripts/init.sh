#!/bin/bash


# Change Etag flag
echo "Replacing ETag flag."
sed -i "s/^etagflag*/$(cat \/flags\/header.key)/" /etc/nginx/nginx.conf
