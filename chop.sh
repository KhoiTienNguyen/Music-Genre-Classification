#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Wrong number of arguments"
	echo "./chop.sh input_folder output_folder"
	exit 1
fi

OIFS="$IFS"
IFS=$'\n'
for outer in $1/*
do
	for inner in $outer/*
	do
		genre=$(basename $outer)
		filename=$(basename "$inner" | sed -E 's/\.(mp3|flac|wav)*$//')
		echo $inner
		# To chop the audio file into 3 second segments
		ffmpeg -i "$inner" -f segment -segment_time 3 -c copy $2/$genre/$filename%03d.wav > /dev/null 2>&1
		# To convert the audio from flac or mp3 to wav
		# ffmpeg -i "$inner" $2/$genre/$filename.wav > /dev/null 2>&1
	done
done
IFS="$OIFS"
