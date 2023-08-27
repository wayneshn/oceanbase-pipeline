#!/bin/bash
# Extract the protocol and the URL without the protocol
proto="$(echo $GITPOD_WORKSPACE_URL | grep :// | sed -e's,^\(.*://\).*,\1,g')"
url="$(echo ${GITPOD_WORKSPACE_URL/$proto/})"

# Add '3216-' after 'https://'
new_url=$proto"3216-"$url

# Replace the placeholder __WORKSPACE_URL__ in your config file
sed -i "s|_AUTH_URL_|$new_url|g" jitsu-docker-compose.yml