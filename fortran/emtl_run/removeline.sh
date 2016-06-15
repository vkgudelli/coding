#!/usr/bin/env bash
#to remove the first line which is commented out
for f in *.d; do
        tail -n +2 "$f" > "${f}".tmp && mv "${f}".tmp "$f"
done
