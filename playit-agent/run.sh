#!/bin/sh

echo "Starting Playit Agent..."

if [ -z "$SECRET_KEY" ]; then
    echo "No secret key configured!"
    exit 1
fi

/opt/playit/playit --secret "$SECRET_KEY"
