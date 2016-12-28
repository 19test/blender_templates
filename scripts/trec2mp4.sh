#!/bin/bash
OIFS="$IFS" 
IFS="\n"
for file in $*; do
    # ffmpeg -i $file -af "pan=mono|c0=FL" ${file%.*}.mp3   
    if [ ! -f "${file%.*}.mp4" ]; then
        ffmpeg -i "$file" -c:a mp3 -c:v libx264 -r 25 "${file%.*}".mp4
    fi
    # echo ${file%.*}
done
IFS="$OIFS" 
