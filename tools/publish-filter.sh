#!/bin/sh

if [ $# -ne 1 -o ! -d "$1" ]; then
	echo "Usage: publish-filter.sh [dir]" >&2
	exit 1
fi

FILE_IN="$1/mute-devel.txt"
FILE_OUT="$1/mute.txt"

# Remove unnecessary comments and lines with just whitespace.
head -n 10 "$FILE_IN" > "$FILE_OUT"
tail -n +11 "$FILE_IN" | grep -v -E "(^!|^[[:space:]]*$)" >> "$FILE_OUT"

# Add a timestamp.
mv "$FILE_OUT" "${FILE_OUT}.tmp"
sed "s/! Last Modified:.*/! Last Modified: `date +"%F @ %T %Z"`/" < "${FILE_OUT}.tmp" > "$FILE_OUT"
rm "${FILE_OUT}.tmp"

# Generate and include the checksum.
CALC_PATH="`dirname $0`/calc-checksum.pl"
CHECKSUM="`perl $CALC_PATH $FILE_OUT`"
mv "$FILE_OUT" "${FILE_OUT}.tmp"
sed "s|! Checksum:.*|! Checksum: ${CHECKSUM}|" < "${FILE_OUT}.tmp" > "$FILE_OUT"
rm "${FILE_OUT}.tmp"

# Sample output.
head "$FILE_OUT"
echo "[... SNIP ...]"
tail "$FILE_OUT"

