# Git-Playground

Repo to play around with Git and other fun stuff


### How do I split up a large Git branch into lots of smaller branches?

* [How do I split up a large Git branch into lots of smaller branches?](https://stackoverflow.com/questions/12540446/how-do-i-split-up-a-large-git-branch-into-lots-of-smaller-branches)



What I do in this case is use interactive rebase.

At your HEAD, create your branches A, B, and C. Also create a "backup" branch (you could name it backup) in case things go wrong and you need your original HEAD back.
``` 
git branch feature-a
git branch feature-b
git branch feature-c
git-branch backup-before-rebase

``` 
Then, create a branch at the commit you want them to start from, maybe at a convenient stable commit. Call it new_trunk or something.

``` 
git checkout HEAD~50       ## this will be the new tree-trunk
git branch new_trunk

``` 
Then, do interactive rebases and pick out the commits you want to keep in that branch. Used this way, it's basically like cherry-picking in bulk.

``` 
git checkout feature-a
git rebase -i new_trunk    ## -i is for "Interactive"

``` 
When you're done, you should have 3 branches with separate histories starting from new_trunk and a backup branch reflecting the old HEAD if you still need it.