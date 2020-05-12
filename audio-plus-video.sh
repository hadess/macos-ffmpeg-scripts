#!/bin/sh -x

if [ $# -ne 2 ] ; then
	echo "usage: $0 [AUDIO_FILE] [VIDEO_FILE]"
	exit 1
fi

OUTPUT_DIR=`dirname "$1"`

/usr/local/bin/ffmpeg -i "$1" -i "$2" -c:v copy -c:a copy "$OUTPUT_DIR/"result.mp4
