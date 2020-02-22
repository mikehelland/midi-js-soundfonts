#!/bin/bash
#make dirs
#FILES=$(find original -type d -name '*')
#for f in $FILES
#do
#  echo "${f//original/.}"
#  mkdir "${f//original/.}"
#done


#trim and normalize
FILES=$(find original -type f -name '*.mp3')
for f in $FILES
do

  echo "${f//original/.}"
  sox $f ${f//original/.} trim 0.5 norm
  
done
