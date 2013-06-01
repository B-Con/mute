#!/bin/sh

OUT_FILE=/var/www/mute.bradconte.com/public_html/mute.txt
wget https://raw.github.com/B-Con/mute/master/mute.txt -O ${OUT_FILE}.tmp
EXIT_CODE=$?

# Sanity test, so we don't overwrite on a failure garbage.
LINES=`wc -l ${OUT_FILE}.tmp | cut -f1 -d' '`
if [ $EXIT_CODE -eq 0 -a $LINES -gt 20 ]; then
	mv ${OUT_FILE}.tmp ${OUT_FILE}
fi
