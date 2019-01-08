#!/bin/bash

PROCESSOR="`dirname $0`/process_css_file.sh"

for F in `ls *.css`
do
	echo "Processing $F"
	$PROCESSOR $F
done