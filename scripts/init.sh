#!/bin/bash


# Change Etag flag
echo "Replacing ETag flag."
sed -i "s/etagflag/$(cat \/flags\/etag.key)/" /etc/nginx/sites-enabled/default
