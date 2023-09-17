#!/bin/bash

items=($(ls *.gif | shuf))

echo "<table>" > readme.md

for ((i=0; i<6; i++)); do
  echo "<tr>" >> readme.md
  for ((j=0; j<16; j++)); do
    index=$((i*16+j))
    echo "<td><img src=\"${items[$index]}\"></td>" >> readme.md
  done
  echo "</tr>" >> readme.md
done

echo "</table>" >> readme.md
