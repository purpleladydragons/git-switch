#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "Need to supply a branch"
    exit
fi

current_branch=`git branch | grep \* | cut -d ' ' -f2`
git stash push -m $current_branch
git checkout $1

grep="^On $1: $1$"
stash_n=`git stash list --max-count=1 --grep="$grep" | cut -f1 -d":"`
if [[ -n "$stash_n" ]] ; then
    git stash apply $stash_n
    git stash drop $stash_n
else
    echo "Error: No stash matches"
fi
