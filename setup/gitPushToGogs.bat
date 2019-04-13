f12
@echo off
echo Create a repository on http://gogs:3000 for your user repository
echo see https://discuss.gogs.io/t/importing-local-file-based-git-repositories/280
set /p user="Enter User: "
set /p repo="Enter Repo: "

rem TODO convert to SSH
git remote set-url origin http://gogs:3000/%user%/%repo%.git

git push -f origin master
