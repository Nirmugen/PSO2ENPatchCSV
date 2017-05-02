#!/bin/bash
rm /tmp/UTF8.stderr
find . -name "*.csv" -not -path "*/Files/*" -not -path "*/.git/*" -print0|xargs -P 0 -n 1024 -0 ./_py/UTF8.py 2> /tmp/UTF8.stderr
if [ -s /tmp/UTF8.stderr ]; then
	cat /tmp/UTF8.stderr
	exit 1
fi