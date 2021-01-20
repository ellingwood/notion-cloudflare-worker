#!/bin/bash

# Update these with your own vars
export CLOUDFLARE_ACCOUNT_ID=''
export CLOUDFLARE_SCRIPT_NAME=''
export CLOUDFLARE_EMAIL=''
export CLOUDFLARE_AUTH_KEY=''

echo "Deploying build"

# get response status code
response=$(curl -s -o /dev/null -w "%{http_code}" -X PUT "https://api.cloudflare.com/client/v4/accounts/$CLOUDFLARE_ACCOUNT_ID/workers/scripts/$CLOUDFLARE_SCRIPT_NAME" -H "X-Auth-Email:$CLOUDFLARE_EMAIL" -H "Authorization: Bearer $CLOUDFLARE_AUTH_KEY" -H "Content-Type:application/javascript" --data-binary "@./dist/worker.js")

echo $response