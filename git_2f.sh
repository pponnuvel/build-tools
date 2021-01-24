##Change remote:
git remote -v 
git remote remove origin 
git remote add origin git@github.com:pponnuvel/$(basename $(git rev-parse --show-toplevel)).git

##Remove merge commit:
#git rebase -i <commit to remove>^
