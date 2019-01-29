# git-switch
git extension to manage uncommitted changes when switching branches

## Use
`git switch my-branch`

This will save any uncommitted changes on your current branch, checkout `my-branch`, 
and load previously saved uncommitted changes from `my-branch`. 

## "Installation"
1) Make the `git-switch.sh` script executable (`chmod +x git-switch.sh`)
2) Rename `git-switch.sh` to `git-switch`
3) Move `git-switch` onto your path
4) You can now use this script as `git switch BRANCH`
