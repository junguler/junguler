#!/bin/bash

items=($(cat <(ls *.gif) <(echo error) <(echo empty) <(echo nothing) | shuf))

echo "<table>" > readme.md

for ((i=0; i<8; i++)); do
  echo "<tr>" >> readme.md
  for ((j=0; j<12; j++)); do
    index=$((i*12+j))
    echo "<td><img src=\"${items[$index]}\"></td>" >> readme.md
  done
  echo "</tr>" >> readme.md
done

echo "</table>" >> readme.md
