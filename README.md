# git-switch
git extension to manage uncommitted changes when switching branches

## Why
If you have multiple branches in one repo, you might sometimes find yourself
switching between branches in the middle of some work. The work isn't complete
enough that you'd want it to be committed, but you also don't want to throw it away either.
I normally use `git stash` for this, but `git stash` is clunky. This script does the 
saving and loading of the stash that you'd otherwise have to do manually.

## Use
`git switch my-branch`

This will save any uncommitted changes on your current branch, checkout `my-branch`, 
and load previously saved uncommitted changes from `my-branch`. 

## "Installation"
1) Make the `git-switch.sh` script executable (`chmod +x git-switch.sh`)
2) Rename `git-switch.sh` to `git-switch`
3) Move `git-switch` onto your path
4) You can now use this script as `git switch BRANCH`
