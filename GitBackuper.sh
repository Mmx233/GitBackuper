p="" #路径
cd $p
c=$(git status|grep -E "Changes not staged for commit|Untracked files|Your branch is ahead of")
if [ ! -z "$c" ]
then
git add --all
git commit -m "$(date '+%Y年%m月%d日')"
git push
fi