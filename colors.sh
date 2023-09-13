#!/bin/bash

for j in {1..10} ; do for i in {A..Z} {0..9} "+" "_" ; do printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt ; convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 30x30 caption:$i -extent 30x30 $i-$j.jpg ; done ; done

for j in {1..10} ; do for i in {a..z} ; do printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt ; convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 30x30 caption:$i -extent 30x30 $i$i-$j.jpg ; done ; done

for k in {A..Z} {0..9} "+" "_" ; do convert -delay 50 $k-*.jpg $k.gif ; done

for k in {a..z} ; do convert -delay 50 $k$k-*.jpg $k$k.gif ; done

rm c1.txt c2.txt ; rm *.jpg
