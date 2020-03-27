#!/bin/bash

if [ ! -f ".gitignore" ]; then
  echo "${blue}Please launch this script from the root of the repo."
  echo "  ./tools/java_header.sh"
  echo "${blk}"
  exit 1
fi


for i in $(find . -name '*.java');
do
  if ! grep -q Copyright $i
  then
    cat tools/java_header.txt $i >$i.new && mv $i.new $i
  fi
done
