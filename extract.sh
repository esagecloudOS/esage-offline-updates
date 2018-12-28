#!/bin/bash
match=$(grep --text --line-number '^PAYLOAD:$' $1 | cut -d ':' -f 1)
payload_start=$((match + 1))
tail -n +$payload_start $1 | tar -xzf -
