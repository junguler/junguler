#!/bin/bash

for j in {1..6}
do for i in {A..Z} {0..9}
do echo $i
printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt
printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt
convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 50x50 caption:$i -extent 50x50 $i-$j.jpg
done
done

for k in {A..Z} {0..9}
do echo $k
convert -delay 50 $k-*.jpg $k.gif
done

rm c1.txt c2.txt
rm *.jpg