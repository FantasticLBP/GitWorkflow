
project_root=$(cd $(dirname $0)/..; pwd)

echo $project_root
cd $project_root/

status=`git status`
#没什么提交
if [[ $status =~ "working tree clean" ]];then
	git checkout develop
	git pull --rebase
else	
	git stash
	echo "检测到你修改了CLi库 如有修改请求请联系库管 已将您的修改stash 如果需要 可以使用git stash pop 恢复您的修改"
	git checkout develop
	git pull --rebase
fi
