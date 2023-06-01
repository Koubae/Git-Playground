# Get list of commits 
git log --reflog

# Split 1 branch into many smaller
git branch feature-a
git branch feature-b
git branch feature-c
git branch backup-before-rebase
git branch feature-main 

git checkout feature-main 

# Make all commits 
git checkout feature-a
git rebase -i feature-main     ## -i is for "Interactive"
