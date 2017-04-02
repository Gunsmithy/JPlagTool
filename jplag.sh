#!/bin/bash

jplag=$1
submissions=$2
results=$3
input=$4

mkdir $submissions
cp $input $submissions
cd $submissions
for /F "tokens=*" %%A in (%input%) do (git clone %%A)
while read $githublinks; do
  git clone $githublinks
done < $input
java -jar $jplag -l c/c++ $submissions -r $results
