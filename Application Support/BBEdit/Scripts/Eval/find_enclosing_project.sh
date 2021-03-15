#!/bin/sh

a="$( dirname "$1" )"
while [ $a != "/" ] ; do
  if [ -d "$a/.git" ]; then
    echo $a
    exit
  fi
  a="$( dirname "$a" )"
done
echo "No project found."