#!/bin/sh

echo "Starting Playit Agent..."

echo "Options:"
cat /data/options.json

SECRET_KEY=$(cat /data/options.json | sed -n 's/.*"secret_key": *"\([^"]*\)".*/\1/p')

if [ -z "$SECRET_KEY" ]; then
    echo "No secret key configured!"
    exit 1
fi

echo "Secret key found, starting Playit..."
/opt/playit/playit --secret "$SECRET_KEY"
