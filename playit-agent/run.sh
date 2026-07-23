#!/bin/sh

echo "Starting Playit Agent..."

SECRET_KEY=$(cat /data/options.json | grep -o '"secret_key":"[^"]*"' | cut -d'"' -f4)

if [ -z "$SECRET_KEY" ]; then
    echo "No secret key configured!"
    exit 1
fi

/opt/playit/playit --secret "$SECRET_KEY"
