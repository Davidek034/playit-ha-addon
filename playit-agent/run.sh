#!/bin/bash

echo "Starting Playit Agent..."

if [ -z "$SECRET_KEY" ]; then
    echo "No secret key configured!"
    echo "Open the addon options and add your Playit secret key."
    exit 1
fi

/opt/playit/playit --secret "$SECRET_KEY"
