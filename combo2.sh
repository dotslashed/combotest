#!/bin/bash

urls="$(<./urls.txt)"
while IFS= read  -r pays; do
    echo "$urls" | qsreplace "$pays" |
        while IFS= read  -r payload; do
            echo $payload
        done
done < ./payloads.txt
