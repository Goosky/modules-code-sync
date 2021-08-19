#!/bin/bash
echo "Enter merge branch:"
# shellcheck disable=SC2162
read merge_branch
echo "The merge_branch is: merge_branch"
echo "======START MERGE========"
# shellcheck disable=SC2045
# shellcheck disable=SC2006
for file in `ls`;
do
if [ -d "$file" ]
then 
  # shellcheck disable=SC2046
  # shellcheck disable=SC2164
  # shellcheck disable=SC2006
  # shellcheck disable=SC2116
  cd `echo "$file"`
  git merge "${merge_branch}"
  # shellcheck disable=SC2028
  echo "\n"
  cd ..
fi
done
echo "======MERGE OVER========"