#!/bin/zsh

for j in {1..10} ; do for i in {\!..\[} {\]..\~} ; do printf -v hex '%02X' $((#i)) ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt ; convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 30x30 caption:$i -extent 30x30 $hex-$j.jpg ; done ; done

for j in {1..10} ; do for i in gr{1..3} ; do printf -v hex '%02X' $((#i)) ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt ; convert -size 30x30 -define gradient:angle=$((RANDOM%360+1)) gradient:\#$(cat c1.txt)-\#$(cat c2.txt) +dither -colors 2 $i-$j.jpg ; done ; done

for ((i=33; i<=126; i++)) ; do for k in $(printf '%02x\n' $i | tr '[:lower:]' '[:upper:]' | grep -v "5C" ) ; do convert -delay 50 $k-*.jpg $k.gif ; done ; done

for k in gr{1..3} ; do convert -delay 50 $k-*.jpg $k.gif ; done

rm c1.txt c2.txt ; rm *.jpg
