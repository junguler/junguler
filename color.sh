#!/bin/bash

for i in {A..Z} {0..9}
do echo $i
printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt
printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt
magick convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 100x100 caption:$i -extent 124x124 $i.jpg
done

rm c1.txt c2.txt