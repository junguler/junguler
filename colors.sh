#!/bin/zsh

for j in {1..10} ; do for i in {\!..\[} {\]..\~} ; do printf -v hex '%02X' $((#i)) ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c1.txt ; printf "%02x%02x%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) > c2.txt ; convert -gravity center -trim -background \#$(cat c1.txt) -fill \#$(cat c2.txt) -size 30x30 caption:$i -extent 30x30 $hex-$j.jpg ; done ; done

for k in 21 22 23 24 25 26 27 28 29 2A 2B 2C 2D 2E 2F 30 31 32 33 34 35 36 37 38 39 3A 3B 3C 3D 3E 3F 40 41 42 43 44 45 46 47 48 49 4A 4B 4C 4D 4E 4F 50 51 52 53 54 55 56 57 58 59 5A 5B 5D 5E 5F 60 61 62 63 64 65 66 67 68 69 6A 6B 6C 6D 6E 6F 70 71 72 73 74 75 76 77 78 79 7A 7B 7C 7D 7E ; do convert -delay 50 $k-*.jpg $k.gif ; done

rm c1.txt c2.txt ; rm *.jpg
