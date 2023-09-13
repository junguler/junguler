items=($(ls *.gif | shuf))

echo "<table>" > readme.md

for ((i=0; i<64; i++)); do
  if ((i % 8 == 0)); then
    echo "<tr>" >> readme.md
  fi
  echo "<td><img src=\"${items[$i]}\"></td>" >> readme.md
  if ((i % 8 == 7)); then
    echo "</tr>" >> readme.md
  fi
done

echo "</table>" >> readme.md
