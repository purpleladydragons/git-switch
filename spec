git switch BRANCH

- the goal:
    - allow a user to switch between branches in a repo without losing/committing current changes
- idea:
    - when you git switch, the tool will get the name of the current branch, and it will create a named stash
    - then it will switch to the desired branch... and try to git apply a stash with the name of the new branch
    - when you switch back to the old branch, it should load those changes in...
- what happens if someone switches to B from A, then does stuff, then checkouts A? how do we apply our og. changes?
- what should it do if the branch is in another repo? nothing probably... that's how git works generally

languages of impl:
- bash
- python
- rust
- haskell
- ocaml

what does it need to really do? 
- get current branch name
- infer the other branch's thing? from the arg...
- do the git stash save/apply behind the scenes
