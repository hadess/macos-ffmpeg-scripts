#!/bin/sh

if [ $# -lt 2 ] ; then
        echo "usage: $0 [FILES...]"
        exit 1
fi

LIST_FILE="`mktemp`"
OUTPUT_DIR=`dirname "$1"`

for i in "$@" ; do
        echo "file '$i'" >> $LIST_FILE
done
/usr/local/bin/ffmpeg -f concat -safe 0 -i $LIST_FILE -c copy "$OUTPUT_DIR/"result.mp4
