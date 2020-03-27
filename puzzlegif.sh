#!/bin/bash

# for i in {40..64}
# not giving the solution!
for i in {40..63}
do
    # ./node_modules/.bin/svgexport chess-try$i.svg chess-try$i.png
    # convert -density 1200 -resize 200x200 chess-try$i.svg chess-try$i.png
    convert chess-try$i.svg chess-try$i.png
    ncases=$((64-$i))
    convert -pointsize 25 -fill red -draw 'text 10,30 '\"$ncases\"'' chess-try$i.png chess-try$i.png
done
# does not seem to follow the order: convert -delay 100 -loop 0 chess-try*.png chesssolution.gif
# ffmpeg -i chess-try%02d.png output.gif
files=$(ls chess-try*.png | sort -n -k1)
echo $files
convert -delay 100 $files animation.gif
