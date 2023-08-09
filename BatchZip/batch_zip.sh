#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for file in *
do
  if [ -d $file ]
  then
    zip -rq $file.zip $file
    echo $file was successfully compressed.
  fi
done

IFS=$SAVEIFS
