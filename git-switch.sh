#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Need to supply a branch"
    exit
fi

current_branch=`git branch | grep \* | cut -d ' ' -f2`
git stash save $current_branch
git checkout $1
git stash apply stash^{/$1} >/dev/null 2>/dev/null
git stash drop stash^{/$1} >/dev/null 2>/dev/null
