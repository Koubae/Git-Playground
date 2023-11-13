# Get list of commits 
git log --reflog
git log --oneline

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



### 
# Scenario: branch_1, branch_2 from branch_1 --> commit branch_1, then commit branch_2
###
git checkout -b branch_1 master
git checkout -b branch_2 branch_1


