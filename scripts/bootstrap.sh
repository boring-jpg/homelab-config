#! /bin/bash

ssh_key=$(curl https://github.com/boring-jpg.keys)
authorized_key_file="$HOME/.ssh/authorized_keys"

if [ ! -f "$authorized_key_file" ]; then
    touch "$authorized_key_file"
fi

echo "$ssh_key" > "$authorized_key_file"



