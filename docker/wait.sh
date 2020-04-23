#!/bin/bash

while read SIGNAL; do
    case "$SIGNAL" in
        *EXIT*)break;;
        *)echo "signal  $SIGNAL  is unsupported" >/dev/stderr;;
    esac
done < /tmp/mypipe
