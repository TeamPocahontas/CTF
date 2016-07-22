#!/bin/bash


# Change Etag flag
sed -i 's/^etagflag*/$(cat /flags/header.key)/' /etc/nginx/nginx.conf
