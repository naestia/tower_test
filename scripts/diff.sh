#!/bin/bash

arr=("prod" "test" "stage")
declare -a changed_directories

for dir in ${arr[@]}; do
    echo $dir
    git diff --name-only --diff-filter=ADMR @~..@ | grep -q $dir

    retVal=$?

    echo "git command retVal : ${retVal}"
    if [ $retVal -eq 0 ]; then
    echo "folder/file : $dir changed"
    changed_directories+=$dir
    else
    echo "no match found for the folder/file : $dir"
    fi
done


echo ${changed_directories[@]}
