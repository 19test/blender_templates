#!/bin/bash
OIFS="$IFS"
IFS="\n" 

for file in $*; do
    if [ ! -f ${file%.*}.mp3 ]; then
        ffmpeg -i $file -af "pan=mono|c0=FL" ${file%.*}.mp3   
    fi
    # echo ${file%.*}
done

IFS="$OIFS"
