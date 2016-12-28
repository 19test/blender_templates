#!/bin/bash
OIFS="$IFS"
IFS="\n" 

for file in $*; do
    ffmpeg -i $file -af "pan=mono|c0=FL" ${file%.*}.mp3   
    # echo ${file%.*}
done

IFS="$OIFS"
