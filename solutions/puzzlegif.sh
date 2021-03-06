#!/bin/bash

nsols=$(ls *.svg | wc -l)
for i in $(seq 1 $nsols); do
    convert chess-solution$i.svg chess-solution$i.png
done
# does not seem to follow the order: convert -delay 100 -loop 0 chess-try*.png chesssolution.gif
# ffmpeg -i chess-try%02d.png output.gif
files=$(ls chess-solution*.png | sort -n -k1)
echo $files
convert -delay 100 $files animation.gif
