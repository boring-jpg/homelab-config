#! /bin/bash

output=".env"

# Get rid of old file
if [ -f "$output" ]; then
    rm "$output"
fi

# Parse files and add to .env
COMPOSE_FILE=""
for f in docker-compose-*.yaml; do
    if [ -f "$f" ]; then
        if [ -z "$COMPOSE_FILE" ]; then
            COMPOSE_FILE="$f"
        else
            COMPOSE_FILE="$COMPOSE_FILE:$f"
        fi
    fi
done
echo "COMPOSE_FILE=$COMPOSE_FILE" >> $output
