#!/bin/bash

urls="$(<./hosts.txt)"
while IFS= read  -r pays; do
    echo "$urls" |
        while IFS= read  -r payload; do
            echo "$payload$pays"
        done
done < ./paths.txt
