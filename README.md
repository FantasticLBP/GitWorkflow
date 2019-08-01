# 工程开发 Gitflow Cli 库简介


## 目的

规范git操作，脚本实行gitflow


## 辅助库项目地址：

[项目地址](https://github.com/FantasticLBP/GitWorkflow)


## 项目目录

```
.
├── README.md
├── export.sh
├── bin
│   ├── batchCrtBr
│   ├── crtBr
│   ├── crtTag
│   ├── delBr
│   ├── featureFinish
│   ├── featureStart
│   ├── releaseStart
│   ├── releaseFinish
│   ├── cli_update.sh
│   ├── setUp.sh


```

## 使用

1. 把项目clone到本地

     `git clone git@github.com:FantasticLBP/GitWorkflow.git`

2. 把项目目录中的bin添加到bash的PATH

	执行工程下面的 `./exportPath.sh` 脚本。剩下的配置在脚本内部自动完成了。
	
	- 进入目录，给脚本添加权限。`chmod +x exportPath.sh`
	- 执行脚本。`./exportPath.sh`
	
	原理：
	shell的配置文件。其中是用bash的 请在~/.目录下修改编辑 .bashrc；使用oh_my_zsh的 请在~/.目录下修改编辑 .zshrc（推荐使用 iterm2+oh_my_zsh）。比如我的bin目录的路径是：`/Users/liubinpeng/WorkSpace/IOS/sdg_frontend_gitflowcli/bin`，就需要在上述的配置文件里增加一行：`export PATH=/Users/liubinpeng/WorkSpace/IOS/sdg_frontend_gitflowcli/bin:$PATH`

3.  cli库需要更新时使用 `./cli_update.sh`,就会自动pull最新的cli下来。


## 功能说明（功能名称对应的就是文件名称）

### setUp

在需要使用的库下使用setUp.sh 帮助建立一份配置文件 以解决不同项目生产分支和开发分支名不同的问题。


### featureStart

开始一个新功能开发时使用。
使用方法 ： 在工程相应根目录下执行 `featureStart`


### featureFinish

完成一个功能开发需要提测时使用 会把当前分支合并develop后推到develop 会自动执行release start
使用方法 ： 在工程相应根目录下执行 `featureFinish`


### releaseStart

需要提测一个功能开发的时候 会从合并过feature的dev分支拉取一个release分支。
使用方法 ： 在工程相应根目录下执行 `releaseStart`


### releaseFinish

发布一个功能时使用 mergermaster后 推到master 打tag 完成发布
使用方法 ： 在工程相应根目录下执行 `releaseFinish `

