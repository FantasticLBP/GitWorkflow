#!/bin/sh #!/usr/bin/env bash

COLOR_ERR="\033[1;31m"    #出错提示
COLOR_SUCC="\033[0;32m"  #成功提示
COLOR_QS="\033[1;37m"  #问题颜色
COLOR_AW="\033[0;37m"  #答案提示
COLOR_END="\033[1;34m"     #颜色结束符

echo $COLOR_QS"此脚本将帮助你设置这个库的基本配置\n"$COLOR_END
rm -fr ./gitflowConfig.sh
rm -fr ./gitflowConfig.sh~

echo $COLOR_QS"请输入项目的生产环境分支名(直接回车默认使用master)"$COLOR_END
read master
if [ ! -n "$master" ]; then
  echo "#!/bin/sh #!/usr/bin/env bash" >> gitflowConfig.sh
  echo "master='master'" >> gitflowConfig.sh
  echo "export master" >> gitflowConfig.sh
else
  echo "#!/bin/sh #!/usr/bin/env bash" >> gitflowConfig.sh
  echo "master='$master'" >> gitflowConfig.sh
  echo "export master" >> gitflowConfig.sh
fi
echo $COLOR_QS"请输入项目的开发分支名(直接回车默认使用develop)"$COLOR_END
read develop
if [ ! -n "$develop" ]; then
  echo "develop='develop'" >> gitflowConfig.sh
  echo "export develop" >> gitflowConfig.sh
else
  echo "develop='$develop'" >> gitflowConfig.sh
  echo "export develop" >> gitflowConfig.sh
fi
