#!/bin/bash

TARGET="$1"
ORIGIN="$1.origin"

test -z "$TARGET" && { echo "No input file"; exit 1; }

REPLACER="`dirname $0`/replace_css_url.pl"

test -f "$ORIGIN" || cp -f $TARGET $ORIGIN

cat $ORIGIN | $REPLACER > $TARGET
